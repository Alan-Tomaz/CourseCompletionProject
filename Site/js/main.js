function readMore(arg) {
    let p = document.getElementById("read-more");
    let h1 = document.getElementById("valor-h1")
    let hiddenContent = document.getElementsByClassName("hidden-content");
    switch (arg) {
        case 0:
            hiddenContent[0].style.display = "block";
            h1.innerHTML = "Lorem";
            p.innerHTML = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin suscipit tincidunt congue.Maecenas luctus massa nisl, ac lobortis ipsum imperdiet ac.Vestibulum mattis, metus at vulputate maximus, felis tellus posuere nunc, eu scelerisque tortor libero eu lorem.Suspendisse potenti.Maecenas ut eleifend elit, sed scelerisque orci.Donec non finibus purus.Etiam interdum sed magna vel molestie.Sed feugiat, nisi at ornare ultrices, ligula turpis semper magna, eu rutrum metus massa non ex.Integer ullamcorper nisi a quam lobortis, et bibendum arcu faucibus.In tempor scelerisque metus, eu lacinia magna feugiat vel.Integer vel metus diam.Morbi sollicitudin interdum sapien.";
            break;
        case 1:
            hiddenContent[0].style.display = "block";
            h1.innerHTML = "Sed";
            p.innerHTML = "Sed volutpat sapien tellus, eget dapibus lacus rutrum ut. Aenean finibus nec ante non imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse pharetra felis sit amet viverra consequat. Maecenas eu faucibus tortor. Praesent tincidunt, neque in interdum accumsan, eros est ornare neque, vel tempor neque massa lobortis est. Quisque in dolor fermentum felis interdum rutrum. Nullam dictum pharetra mi vel aliquam. Nunc vehicula, mi sit amet ornare pharetra, velit tortor ullamcorper augue, ut consequat leo nisi eu nibh.";
            break;
        case 2:
            hiddenContent[0].style.display = "block";
            h1.innerHTML = "Pellentesque";
            p.innerHTML = "Pellentesque congue velit nec urna dictum, eu aliquam tortor ultrices. Vivamus orci arcu, sollicitudin non odio vel, tempor hendrerit mauris. Phasellus quam nulla, maximus id sapien et, aliquam posuere libero. Donec vehicula egestas ex, ac condimentum massa cursus eu. Nulla rutrum enim feugiat elementum luctus. Nunc eget velit purus. Praesent faucibus tempor erat, in finibus lorem viverra non. Donec sollicitudin nunc nec dui pellentesque mattis. Praesent ut porttitor diam.";
            break;
        case 3:
            hiddenContent[0].style.display = "block";
            h1.innerHTML = "Vestibulum";
            p.innerHTML = "Vestibulum congue maximus mi nec lacinia. Sed eget neque dictum, vehicula nisl lacinia, accumsan ex. Suspendisse diam lectus, eleifend pretium dui nec, placerat tincidunt nisl. Morbi at dolor nec augue viverra congue eu sit amet velit. Sed sagittis eros sit amet ornare tincidunt. In aliquet dui et est tristique, ac dictum mi suscipit. Maecenas consectetur tristique nunc, eu efficitur enim tempor eu. Integer ut ullamcorper mi, ac lobortis dui. Cras rhoncus semper pellentesque. Nunc vitae blandit diam. Donec condimentum dolor sit amet ipsum tempor, non ornare erat euismod. In eget neque tempus, consequat quam at, tempor tortor. Donec dictum, ante eget iaculis fermentum, augue nunc aliquam sem, sed ultricies nibh sem sed magna.";
            break;
        default:
            break;
    }
}