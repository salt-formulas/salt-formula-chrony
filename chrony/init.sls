
include:
{% if pillar.chrony.client is defined %}
- chrony.client
{% endif %}
{% if pillar.chrony.server is defined %}
- chrony.server
{% endif %}
