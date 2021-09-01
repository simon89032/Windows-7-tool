#include <iostream>
#include <fstream>
#include <string>
#include <Windows.h>

using namespace std;
int main()
{
    CONSOLE_FONT_INFOEX cfi;
    cfi.cbSize = sizeof cfi;
    cfi.nFont = 0;
    cfi.dwFontSize.X = 0;
    cfi.dwFontSize.Y = 17;
    cfi.FontFamily = FF_DONTCARE;
    cfi.FontWeight = FW_NORMAL;

    wcscpy_s(cfi.FaceName, L"Consolas");
    SetCurrentConsoleFontEx(GetStdHandle(STD_OUTPUT_HANDLE), FALSE, &cfi);

    // set terminal size
    //system("mode con cols=90 lines=30");

    // set terminal color
    //system("color 17");
    cout << "Windows 7 repair tool by Simeon. Made in Bulgaria with love" << endl;
    cout << endl;
    int choice;
    bool end = false;
    char YN;

    while (!end)
    {
        cout << "Choose your option: " << endl;
        cout << "1 - CREATE RESTORE POINT" << endl;
        cout << "2 - CHECK OS" << endl;
        cout << "3 - REMOVE TASKS" << endl;
        cout << "4 - REMOVE TELEMETRY" << endl;
        cout << "5 - REMOVE UPDATES" << endl;
        cout << "6 - CLEAR WINDOWS UPDATES" << endl;
        cout << "7 - INSTALL GOOD UPDATES" << endl;
        cout << "8 - RESET UPDATE SETTINGS" << endl;
        cout << "9 - RESET NETWORK SETTINGS" << endl;
        cout << "10 - CHANGE DNS SERVERS" << endl;

        cout << endl;
        cout << "Enter your choice: ";

        cin >> choice;
        cout << endl;
        switch (choice)
        {
        case 1:
        {
            cout << endl;
            cout << "CREATE RESTORE POINT." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("createrestorepoint.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("createrestorepoint.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 2:
        {
            cout << endl;
            cout << "CHECKING OS." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("oscheck.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("oscheck.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 3:
        {
            cout << endl;
            cout << "REMOVING TASKS." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("remtasks.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("remtasks.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 4:
        {
            cout << endl;
            cout << "REMOVING TELEMETRY." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("remtel.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("remtel.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 5:
        {
            cout << endl;
            cout << "REMOVING UPDATES." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("remwin7upd.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("remwin7upd.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 6:
        {
            cout << endl;
            cout << "CLEANING UPDATES." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("cleanupd.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("cleanupd.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 7:
        {
            cout << endl;
            cout << "CLEANING UPDATES." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("cleanupd.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("cleanupd.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 8:
        {
            cout << endl;
            cout << "RESETTING UPDATE SETTINGS." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("resetupdsettings.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("resetupdsettings.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 9:
        {
            cout << endl;
            cout << "RESETTING NETWORK SETTINGS." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("resetnetworksettings.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("resetnetworksettings.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;

        case 10:
        {
            cout << endl;
            cout << "CHANING DNS SERVER." << endl;
            std::ifstream ifile;
            std::cout << std::endl;
            ifile.open("changedns.bat");
            if (ifile) {
                std::cout << "file exists\n";
            }
            else {
                std::cout << "file doesn't exist\n";
            }

            std::system("changedns.bat");

            std::cout << std::endl;

            /// <summary>
            /// Return option
            /// </summary>
            /// <returns></returns>
            cout << "Would you like to go back to the menu? " << endl;
            cout << "If yes then press y, if no press n" << endl;
            cout << "Choice: ";
            cin >> YN;
            if (YN == 'y' || YN == 'Y') {
                end = false;
            }
            else if (YN == 'n' || YN == 'N') {
                end = true;
            }
            else {
                cout << "Wrong choice" << endl;
                end = false;
            }
            cout << endl;
        }
        break;
        default:
            end = true;
            break;
        }
    }
    return 0;
}