## Handling file upload using Ruby on Rails 5 API
This is part of a tutorial article about handling file upload with Ruby on Rails.

### About
- Each of the branches in the repository features a different implementation
- You can view the tutorial [here](http://tutorials.pluralsight.com/ruby-ruby-on-rails/handling-file-upload-using-ruby-on-rails-5-api)

### Examples
- Uploading Photo & PDF document via REST API
- Once uploaded, file is available at:
    - Photo: `<host>/system/items/pictures/:id/:style/image.jpg`
    - PDF: `<host>/documents/files/:id/original/pdfile.pdf`

    ```bash
    curl \
        -F "item[document_data][]=@/path/to/file.pdf;type=application/pdf" \
        -F "item[document_data][]=@/path/to/file.pdf;type=application/pdf" \
        -F "item[image_base]=@/path/to/photo.png" \
        -F "item[name]=item" \
        -F "item[description]=desc"   \
        localhost:3000/items
    ```

### Deployment
- Demo app available at https://demo-rails-file-upload.herokuapp.com/
