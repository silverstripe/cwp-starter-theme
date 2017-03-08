# Changing Forms

Forms are an important part of the web. We've taken special care to ensure that they look good, and work well for as many people as possible. If you'd like to see what the default form fields look like, or how they work, create a form test page:

![Creating the form test page](images/creating-the-form-test-page.gif)

This is a great tool, to use when you're making changes to all fields; and want to see what they all look like together. Form fields are just another set of templates. Dive into `starter-theme/templates/forms` and modify them to suit your site.

If the form field template you need is not in the templates folder it means that it is unchanged from the framework's default template. In this case you can copy it from the framework into your theme and adjust as necessary. If you're doing this, check first that you can't achieve your goal using SilverStripe extensions instead of duplicating a template.

We've followed Bootstrap 3's recommended markup, and added a sprinkling of accessibility improvements. We're confident these forms templates will work well for you, and that able and disabled people alike will appreciate their presentation and utility.

> We've provided good defaults for most of the form fields SilverStripe supports. There are a few that could do with a more personal touch, like the Tree Dropdown field. It's one of a few fields that's not often used on the front-end of a site, and its presentation can vary so much that we've chosen to apply minimal styling.

By default required fields have `required` attributes, giving them HTML5 client-side validation. This is the most accessible default, but you can change them (to only have server-side validation) by removing the `required` attributes from the form templates and/or add a `novalidate` attribute on the form tag. This can be done from PHP if required:

```php
$form = Form::create(/* ... */);
$form->setAttribute('novalidate', true);
```
