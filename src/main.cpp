/**
 * @file main.cpp
 * @brief main file.
*/

#include <iostream>
#include <user/user_data.h>

int main() 
{
    std::cout << "cross-device-data-transfer.out started\n";

    bool res = ResetToDefault(true, true, true);

    std::cout << "cross-device-data-transfer.out ended\n";

    return -1;
}
