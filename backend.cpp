#include "backend.h"

Backend::Backend() { }

QString Backend::doSome()
{
    // and it just returns a string with some HTML markup
    return "<font color='green'>new <b>GREEN</b> thing</font>";
}
