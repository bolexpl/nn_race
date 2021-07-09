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
    for (int i = 0; i < args.size() - 2; i++) {
        result.append(r[i] / 650);
    }
    result.append(r[args.size() - 1] / 400);

    return result;
}

PoolStringArray Neural::algorithms() {
    PoolStringArray result;
    result.append(String("tor 1 20 n."));
    result.append(String("tor 1 30 n."));
    result.append(String("tor 1 40 n."));
    result.append(String("tor 2 20 n."));
    result.append(String("tor 2 30 n."));
    result.append(String("tor 2 40 n."));
    result.append(String("oba tory 20 n."));
    result.append(String("oba tory 30 n."));
    result.append(String("oba tory 40 n."));
    return result;
}

PoolRealArray Neural::predict(PoolRealArray args, int ver) {
    double dv[6];
    double b_y1[2];
    for (int idx1{0}; idx1 < 6; idx1++) {
        dv[idx1] = args.read()[idx1];
    }

    switch (ver) {
        case 0:
            classInstance->gdNet_1_20(dv, b_y1);
            break;
        case 1:
            classInstance->gdNet_1_30(dv, b_y1);
            break;
        case 2:
            classInstance->gdNet_1_40(dv, b_y1);
            break;

        case 3:
            classInstance->gdNet_2_20(dv, b_y1);
            break;
        case 4:
            classInstance->gdNet_2_30(dv, b_y1);
            break;
        case 5:
            classInstance->gdNet_2_40(dv, b_y1);
            break;

        case 6:
            classInstance->gdNet_3_20(dv, b_y1);
            break;
        case 7:
            classInstance->gdNet_3_30(dv, b_y1);
            break;
        case 8:
            classInstance->gdNet_3_40(dv, b_y1);
            break;
        default:
            break;
    }

    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


