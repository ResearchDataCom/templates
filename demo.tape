# Create the demo using https://github.com/charmbracelet/vhs.
Output demo.gif
Set FontSize 15
Set Width 1024
Set Height 768
Set Padding 10
Set CursorBlink false

Wait /^>/
Sleep 1s
Type "cookiecutter gh:ResearchDataCom/templates"
Sleep 1s
Enter

Wait+Screen /Choose from/
Sleep 2s
Type "3"
Sleep 1s
Enter

Wait+Screen /project_slug/
Sleep 1s
Type "example_python_project"
Sleep 1s
Enter

Wait+Screen /project_description/
Sleep 1s
Type "Showcase creating a new Python package using a template."
Sleep 1s
Enter

Enter
Sleep 1s
Enter
Sleep 1s
Enter
Sleep 1s
Enter
Sleep 1s
Enter
Sleep 1s
Enter
Sleep 1s
Enter
Sleep 1s

Wait /^>/
Sleep 1s
Type "cd example-python-project"
Sleep 1s
Enter

Wait /^>/
Type "ls -lA"
Sleep 1s
Enter
Sleep 10s
