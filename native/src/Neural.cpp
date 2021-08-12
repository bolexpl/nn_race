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

    result.append(String("gdNetT1N20"));
    result.append(String("gdNetT1N30"));
    result.append(String("gdNetT1N40"));
    result.append(String("gdNetT2N20"));
    result.append(String("gdNetT2N30"));
    result.append(String("gdNetT2N40"));
    result.append(String("gdNetT3N20"));
    result.append(String("gdNetT3N30"));
    result.append(String("gdNetT3N40"));
    result.append(String("gdNetT1N20D"));
    result.append(String("gdNetT1N30D"));
    result.append(String("gdNetT1N40D"));
    result.append(String("gdNetT2N20D"));
    result.append(String("gdNetT2N30D"));
    result.append(String("gdNetT2N40D"));
    result.append(String("gdNetT3N20D"));
    result.append(String("gdNetT3N30D"));
    result.append(String("gdNetT3N40D"));

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
            classInstance->gdNetT1N20(dv, b_y1);
            break;
        case 1:
            classInstance->gdNetT1N30(dv, b_y1);
            break;
        case 2:
            classInstance->gdNetT1N40(dv, b_y1);
            break;
        case 3:
            classInstance->gdNetT2N20(dv, b_y1);
            break;
        case 4:
            classInstance->gdNetT2N30(dv, b_y1);
            break;
        case 5:
            classInstance->gdNetT2N40(dv, b_y1);
            break;
        case 6:
            classInstance->gdNetT3N20(dv, b_y1);
            break;
        case 7:
            classInstance->gdNetT3N30(dv, b_y1);
            break;
        case 8:
            classInstance->gdNetT3N40(dv, b_y1);
            break;
        case 9:
            classInstance->gdNetT1N20D(dv, b_y1);
            break;
        case 10:
            classInstance->gdNetT1N30D(dv, b_y1);
            break;
        case 11:
            classInstance->gdNetT1N40D(dv, b_y1);
            break;
        case 12:
            classInstance->gdNetT2N20D(dv, b_y1);
            break;
        case 13:
            classInstance->gdNetT2N30D(dv, b_y1);
            break;
        case 14:
            classInstance->gdNetT2N40D(dv, b_y1);
            break;
        case 15:
            classInstance->gdNetT3N20D(dv, b_y1);
            break;
        case 16:
            classInstance->gdNetT3N30D(dv, b_y1);
            break;
        case 17:
            classInstance->gdNetT3N40D(dv, b_y1);
            break;
    }

    delete[]dv;
    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


