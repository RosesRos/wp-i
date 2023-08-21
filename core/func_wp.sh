wp_core () {
    wp --allow-root core --path=${wp_html_path} $1
}

wp_config () {
    wp --allow-root config --path=${wp_html_path} $1
}

wp_db () {
    wp --allow-root db --path=${wp_html_path} $1
}
