{% from "chrony/map.jinja" import client with context %}

{%- if server.enabled %}

chrony_packages:
  pkg.installed:
  - name: chrony

/etc/chrony/chrony.conf:
  file.managed:
  - source: salt://chrony/files/chrony.conf
  - template: jinja
  - require:
    - pkg: chrony_packages

chrony_service:
  service.running:
  - enable: true
  - name: {{ client.service }}
  - watch:
    - file: /etc/chrony/chrony.conf

{%- endif %}
