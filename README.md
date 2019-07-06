## Handling file upload using Ruby on Rails 5 API
This is part of a tutorial article about handling file upload with Ruby on Rails.

### Each of the branches in the repository features a different implementation
You can view the tutorial [here](http://tutorials.pluralsight.com/ruby-ruby-on-rails/handling-file-upload-using-ruby-on-rails-5-api)

### To upload a photo & PDF document via API

```bash
curl \
    -F "item[document_data][]=@/path/to/file.pdf;type=application/pdf" \
    -F "item[document_data][]=@/path/to/file.pdf;type=application/pdf" \
    -F "item[image_base]=@/path/to/photo.png" \
    -F "item[name]=item" \
    -F "item[description]=desc"   \
    localhost:3000/items
```
