// this file is covered by the General Public License version 2 or later
// please see GPL.html for more details and licensing issues
// copyright Etienne de Foras ( the author )  mailto: etienne.deforas@gmail.com

#ifndef _MaterialIo_
#define _MaterialIo_

#include <string>
using namespace std;

class Glass;

class MaterialIo
{
public:
    static Glass* load(string sFile);

};

#endif
