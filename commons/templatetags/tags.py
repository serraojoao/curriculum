from django import template
from django.core.urlresolvers import reverse


register = template.Library()


@register.simple_tag
def is_active(request, view_name):
    """
    Checks whether the current request path resolves to view_name.

    Args:
        request: (HttpRequest) instance
        view_name: (string) the view name to reverse

    Returns:
        (string) 'is-active' or ''
    """
    
    #rpath = request.path
    #a, b, c = rpath.split('/', 2)
    
    if reverse(view_name) == request.path:
        return 'active'
    #elif reverse(view_name) in b:
    #    return 'active'
    return ''

@register.simple_tag
def is_active1(request, view_name):
    """
    Checks whether the current request path prefix resolves to view_name.

    Args:
        request: (HttpRequest) instance
        view_name: (string) the view name to reverse

    Returns:
        (string) 'is-activePrefix' or ''
    """
    path = reverse(view_name)

    if path in request.path and path != request.path:
        return 'active'
    return ''
