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

    result.append(String("gdNet2T40N"));
    result.append(String("gdNet2T40Nv2"));
    result.append(String("gdNet2T40Nv3"));
    result.append(String("gdNet2T40ND"));
    result.append(String("gdNet2T40NDv2"));
    result.append(String("gdNet2T40NDv3"));
    result.append(String("gdNet3T40N"));
    result.append(String("gdNet3T40Nv2"));
    result.append(String("gdNet3T40Nv3"));
    result.append(String("gdNet3T40ND"));
    result.append(String("gdNet3T40NDv2"));
    result.append(String("gdNet3T40NDv3"));
    result.append(String("old_gdNet2T40N"));
    result.append(String("old_gdNet2T40ND"));
    result.append(String("old_gdNet3T40N_working"));

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
            classInstance->gdNet2T40N(dv, b_y1);
            break;
        case 1:
            classInstance->gdNet2T40Nv2(dv, b_y1);
            break;
        case 2:
            classInstance->gdNet2T40Nv3(dv, b_y1);
            break;
        case 3:
            classInstance->gdNet2T40ND(dv, b_y1);
            break;
        case 4:
            classInstance->gdNet2T40NDv2(dv, b_y1);
            break;
        case 5:
            classInstance->gdNet2T40NDv3(dv, b_y1);
            break;
        case 6:
            classInstance->gdNet3T40N(dv, b_y1);
            break;
        case 7:
            classInstance->gdNet3T40Nv2(dv, b_y1);
            break;
        case 8:
            classInstance->gdNet3T40Nv3(dv, b_y1);
            break;
        case 9:
            classInstance->gdNet3T40ND(dv, b_y1);
            break;
        case 10:
            classInstance->gdNet3T40NDv2(dv, b_y1);
            break;
        case 11:
            classInstance->gdNet3T40NDv3(dv, b_y1);
            break;
        case 12:
            classInstance->old_gdNet2T40N(dv, b_y1);
            break;
        case 13:
            classInstance->old_gdNet2T40ND(dv, b_y1);
            break;
        case 14:
            classInstance->old_gdNet3T40N_working(dv, b_y1);
            break;
    }

    delete[]dv;
    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


