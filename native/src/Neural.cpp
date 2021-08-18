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
    result.append(String("gdNet2T30N"));
    result.append(String("gdNet2T30Nv2"));
    result.append(String("gdNet2T40N"));
    result.append(String("gdNet2T40Nv2"));
    result.append(String("gdNet3T30N"));
    result.append(String("gdNet3T30Nv2"));
    result.append(String("gdNet3T40N"));
    result.append(String("gdNet3T40Nv2"));
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
            classInstance->gdNet2T30N(dv, b_y1);
            break;
        case 1:
            classInstance->gdNet2T30Nv2(dv, b_y1);
            break;
        case 2:
            classInstance->gdNet2T40N(dv, b_y1);
            break;
        case 3:
            classInstance->gdNet2T40Nv2(dv, b_y1);
            break;
        case 4:
            classInstance->gdNet3T30N(dv, b_y1);
            break;
        case 5:
            classInstance->gdNet3T30Nv2(dv, b_y1);
            break;
        case 6:
            classInstance->gdNet3T40N(dv, b_y1);
            break;
        case 7:
            classInstance->gdNet3T40Nv2(dv, b_y1);
            break;
    }

    delete[]dv;
    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


