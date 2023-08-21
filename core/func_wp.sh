wp_download () {
    wp --allow-root core --path=${wp_html_path} $1
}