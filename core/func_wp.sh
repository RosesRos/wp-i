wp_download () {
    wp --allow-root core --path=${wp_html_path} $1
}

wp_config () {
    wp --allow-root config --path=${wp_html_path} $1
}