import os
import subprocess

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def file_management():
    clear_screen()
    print("File Management Options:")
    print("1. Create a file")
    print("2. Delete a file")
    choice = input("Choose an option: ")
    
    if choice == "1":
        with open("newfile.txt", "w") as f:
            pass
        print("File created!")
    elif choice == "2":
        os.remove("newfile.txt")
        print("File deleted!")

def process_management():
    clear_screen()
    print("Listing running processes...")
    subprocess.run("tasklist", shell=True)

def networking_tools():
    clear_screen()
    website = input("Enter website to ping: ")
    subprocess.run(f"ping {website}", shell=True)

def customization():
    clear_screen()
    print("Choose a color theme:")
    print("1. Green")
    print("2. Blue")
    print("3. Red")
    choice = input("Choose a theme: ")
    
    colors = {"1": "0A", "2": "09", "3": "0B"}
    if choice in colors:
        os.system(f'color {colors[choice]}')
        print("Color changed!")

def task_automation():
    clear_screen()
    print("Automating task...")
    print("Running cleanup...")
    subprocess.run("del *.tmp", shell=True)
    print("Cleanup complete!")

def system_monitoring():
    clear_screen()
    print("CPU Usage:")
    subprocess.run("wmic cpu get loadpercentage", shell=True)
    print("Disk Usage:")
    subprocess.run("wmic logicaldisk get size,freespace", shell=True)

def command_line():
    clear_screen()
    command = input("Enter command: ")
    
    responses = {
        "model": "Model: Acculon Command Line OS 1.0 Copyright Acculon Hardware Co.",
        "game=binary": "Sorry. Not available.",
        "power off": "All system and personal files saved successfully! Ready to be powered off.",
        "hello": "Hello! How Are You Today?",
        "good": "Glad to hear! Let's get started on some tasks!",
        "bad": "Sorry to hear. Maybe we can start some tasks!",
        "play game": "Not available.",
        "save files": "All files saved.",
        "direc": "System Directory: Acculon Command Line OS.cs current.",
        "joke": "Why don't skeletons fight? They don't have the guts!! :)",
        "credits": "Joseph Jarrell; Founder, President, and CEO of Acculon OS.",
        "all commands": "model = system model; game=binary = make a game; power off = saves all changed files.",
        "new text file": lambda: open("text.txt", "w").write(input("Enter text: "))
    }

    if command in responses:
        if callable(responses[command]):
            responses[command]()
        else:
            print(responses[command])

def menu():
    while True:
        clear_screen()
        print("==============================")
        print("         Acculon OS")
        print("        System Menu   ")
        print("==============================")
        print("1. File Management")
        print("2. Process Management")
        print("3. Networking Tools")
        print("4. Customization")
        print("5. Task Automation")
        print("6. System Monitoring")
        print("7. Exit System")
        print("8. Command Line")
        print("==============================")
        choice = input("Choose an option: ")

        actions = {
            "1": file_management,
            "2": process_management,
            "3": networking_tools,
            "4": customization,
            "5": task_automation,
            "6": system_monitoring,
            "7": exit,
            "8": command_line
        }

        if choice in actions:
            actions[choice]()
        input("Press Enter to continue...")

if __name__ == "__main__":
    menu()
