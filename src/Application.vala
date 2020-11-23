public class MyApp : Gtk.Application{
    public MyApp () {
        Object(
            application_id: "com.github.GoldenGladier.hello-layouts",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

protected override void activate () {
    var main_window = new Gtk.ApplicationWindow (this){
        default_height = 500,
        default_width = 500,
        title = "Layouts"
    };

    // var button = new Gtk.Button.with_label ("Click me!");
    // var label = new Gtk.Label (null);
    // grid.add(button);
    // grid.add(label);

    // grid.add (new Gtk.Label("Label 1"));
    // grid.add (new Gtk.Label("Label 2"));

    var hello_button = new Gtk.Button.with_label("Say Hello");
    var hello_label = new Gtk.Label(null);

    var rotate_button = new Gtk.Button.with_label("Rotate");
    var rotate_label = new Gtk.Label("Horizontal");

    var grid = new Gtk.Grid ();
    // grid.orientation = Gtk.Orientation.VERTICAL;
    grid.column_spacing = 6;    
    grid.row_spacing = 6;    

    //Agrega la primera fila de widgets
    grid.attach (hello_button, 0, 0, 1, 1);
    grid.attach_next_to (hello_label, hello_button, Gtk.PositionType.RIGHT, 1, 1);
    //Agrega la segunda fila de widgets
    grid.attach (rotate_button, 0, 1);
    grid.attach_next_to (rotate_label, rotate_button, Gtk.PositionType.RIGHT, 1, 1);

    main_window.add (grid);
    main_window.show_all ();

    hello_button.clicked.connect(() => {
        hello_label.label = "Hello world!";
        hello_button.sensitive = false;
    });
    rotate_button.clicked.connect(() => {
        rotate_label.angle = 90;
        rotate_label.label = "Vertical";
        rotate_button.sensitive = false;
    });

    }
    
    public static int main (string[] args){
        return new MyApp ().run (args);
    }
}