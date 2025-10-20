from werkzeug.middleware.proxy_fix import ProxyFix
from moin.app import create_app

wiki = create_app('/var/www/moin2/wikiconfig.py')
wiki.wsgi_app = ProxyFix(
    wiki.wsgi_app, x_for=1, x_proto=1, x_host=1
)

