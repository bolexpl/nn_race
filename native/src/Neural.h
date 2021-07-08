#ifndef GDNEURAL_NEURAL_H
#define GDNEURAL_NEURAL_H

#include <Godot.hpp>
#include <Reference.hpp>
#include <PoolArrays.hpp>
#include "matlib/GdNet.h"

namespace godot {

    class Neural : public Reference {
    GODOT_CLASS(Neural, Reference)
    public:
        Neural() {
            classInstance = new GdNet();
        }

        ~Neural() {
            delete classInstance;
        }

        /** `_init` must exist as it is called by Godot. */
        void _init() {}

        PoolRealArray norm(PoolRealArray args);

        PoolRealArray predict(PoolRealArray args, int ver);

        PoolStringArray algorithms();

        static void _register_methods();

    private:
        GdNet *classInstance;
    };
}

#endif //GDNEURAL_NEURAL_H
