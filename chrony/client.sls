{% from "chrony/map.jinja" import client with context %}

{%- if client.enabled %}

chrony_packages:
  pkg.installed:
  - name: chrony

/etc/chrony.conf:
  file.managed:
  - source: salt://chrony/files/chrony.conf
  - template: jinja
  - require:
    - pkg: chrony_packages

chrony_service:
  service.running:
  - enable: true
  - name: chronyd
  - watch:
    - file: /etc/chrony.conf

{%- endif %}
