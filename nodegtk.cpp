#include <node.h>
#include <nan.h>
#include <v8.h>
#include "Gwindow.h"
using namespace v8;

NAN_METHOD(checkFrame)
{
    NanScope();
    int argc;
    char **argv;
    createTestwindow(argc,argv);
    NanReturnValue(NanNew("1"));
}

void init(Handle<Object> target)
{
    target->Set(NanNew<String>("checkFrame"),
        NanNew<FunctionTemplate>(checkFrame)->GetFunction());
}

NODE_MODULE(nodegtk, init)
