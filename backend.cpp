#include "backend.h"

Backend::Backend() { }

QString Backend::doSome()
{
    // that's to demonstrate signal connection
    emit someThing("christina hendricks");

    // simply returns a string with some markup
    return "<font color='green'>new <b>GREEN</b> thing</font>";
}
