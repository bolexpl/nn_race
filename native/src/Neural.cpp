#include "Neural.h"

#include <Godot.hpp>

using namespace godot;

void Neural::_register_methods() {
    register_method("predict", &Neural::predict);
    register_method("norm", &Neural::norm);
    register_method("algorithms", &Neural::algorithms);
}

PoolRealArray Neural::norm(PoolRealArray args) {
    PoolRealArray::Read r = args.read();

    PoolRealArray result;
    for (int i = 0; i < args.size() - 1; i++) {
        result.append(r[i] / 650);
    }
    result.append((r[args.size() - 1] / 400));

    return result;
}

PoolStringArray Neural::algorithms() {
    PoolStringArray result;
    result.append(String("gdNetBDMix20"));
    result.append(String("gdNetBDMix30"));
    result.append(String("gdNetBDMix40"));
    result.append(String("gdNetBDMix20v2"));
    result.append(String("gdNetBDMix30v2"));
    result.append(String("gdNetBDMix40v2"));

    result.append(String("gdNetBothDouble"));
    result.append(String("gdNetBothDoubleMix"));
    result.append(String("gdNetBothv2"));
    result.append(String("gdNetBothDoublev2"));
    return result;
}

PoolRealArray Neural::predict(PoolRealArray args, int ver) {
    int size = args.size();
    auto *dv = new double[size];
    double b_y1[2];
    for (int idx1{0}; idx1 < size; idx1++) {
        dv[idx1] = args.read()[idx1];
    }

    switch (ver) {
        case 0:
            classInstance->gdNetBDMix20(dv, b_y1);
            break;
        case 1:
            classInstance->gdNetBDMix30(dv, b_y1);
            break;
        case 2:
            classInstance->gdNetBDMix40(dv, b_y1);
            break;
        case 3:
            classInstance->gdNetBDMix20v2(dv, b_y1);
            break;
        case 4:
            classInstance->gdNetBDMix30v2(dv, b_y1);
            break;
        case 5:
            classInstance->gdNetBDMix40v2(dv, b_y1);
            break;
        case 6:
            classInstance->gdNetBothDouble(dv, b_y1);
            break;
        case 7:
            classInstance->gdNetBothDoubleMix(dv, b_y1);
            break;
        case 8:
            classInstance->gdNetBothv2(dv, b_y1);
            break;
        case 9:
            classInstance->gdNetBothDoublev2(dv, b_y1);
            break;
    }

    delete[]dv;
    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


