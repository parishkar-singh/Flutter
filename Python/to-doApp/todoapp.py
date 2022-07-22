import flet
from flet import Page, TextField, FloatingActionButton, Column, Row, Text, IconButton, OutlinedButton, Tab, UserControl, \
    colors, icons, checkbox


class MyTodoApp(UserControl):
    def build(self):
        self.new_task = TextField(hint_text="Todo app is here", expand=True)
        self.tasks = Column()
        return Column(
            width=600,
            controls=[
                Row([Text(value='todos', style='headlineMedium')], alignment='center'),
                Row(
                    controls=[
                        self.new_task,
                        FloatingActionButton(icon=icons.ADD, on_click=self.add_clicked),
                    ],
                ),
            ],
        )

    def add_clicked(self, e):
        print("add clicked")


def main(page: Page):
    page.title = "TodoApp"
    page.horizontal_alignment = "center"
    # create a todo app instance
    app = MyTodoApp()
    page.add(app)

    def add_todo():
        pass


flet.app(target=main)
