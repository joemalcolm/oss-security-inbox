X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/6
Message-ID: <CA+WUWo-4PrObxoQfhBxTFkKP1weci=zfzCsBddhq-LSgK1EYrA@mail.gmail.com>
Date: Thu, 12 Nov 2026 07:52:31 -0800
From: Ryo utomo <utomoryo395@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-126641: ansible-pylibssh / ansible.netcommon libssh: changed SSH host key accepted when host_key_auto_add is enabled
Content-Type: text/plain; charset=utf-8

Hello,

This is a public disclosure of CVE-2026-126641, a host key verification
flaw in ansible-pylibssh and in the ansible.netcommon libssh connection
plugin. Red Hat Product Security confirmed the issue, assigned the CVE
and lifted the embargo on 2026-11-12.

Summary
-------

When trust-on-first-use is enabled (host_key_auto_add on the
ansible.netcommon libssh plugin, or AutoAddPolicy in pylibssh), a host
that is already in known_hosts but now presents a DIFFERENT key is
accepted without warning. The controller authenticates to that server,
runs the play there, and appends the new key to known_hosts.

An attacker who can intercept SSH between an Ansible controller and a
host it has contacted before can therefore receive the connection
credentials (passwords, keyboard-interactive answers) and read or alter
the commands and configuration pushed to the device. The attacker's key
is persisted, so later runs keep trusting it.

Severity (Red Hat): Moderate, CVSS 3.1 6.5
CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:L/A:N
CWE-322: Key Exchange without Entity Authentication

Default configurations are NOT affected. With host_key_checking on and
host_key_auto_add unset, non-interactive runs fail closed for both
unknown and changed keys.

Affected
--------

- ansible-pylibssh (pylibsshext). Verified on 1.4.0 with libssh 0.12.0.
The logic in Session.verify_knownhost() has been unchanged since
commit f35909c (2020-01-24), i.e. since 0.4.0.
- ansible.netcommon libssh connection plugin, and network_cli when it
uses libssh. Verified on ansible.netcommon 8.7.1 with ansible-core
2.21.5. The policy code dates from commit 3dd7ae2 (2020-07-16).
- Red Hat lists Ansible Automation Platform 2 execution environments
and the python-ansible-pylibssh packages as affected.

Exposure requires the libssh-specific option:
ANSIBLE_LIBSSH_HOST_KEY_AUTO_ADD=true, or host_key_auto_add in the
[libssh_connection] section. network_cli's own same-named option
(ANSIBLE_HOST_KEY_AUTO_ADD) is not forwarded to the libssh transport.
The paramiko transport is deprecated in favour of libssh, so this is
the path users are being directed onto.

Root cause
----------

pylibssh sends three different libssh states to one policy hook:

# src/pylibsshext/session.pyx
KNOW_HOST_MSG_MAP = {
libssh.SSH_KNOWN_HOSTS_CHANGED: "Host key for server has changed: ",
libssh.SSH_KNOWN_HOSTS_OTHER: "Host key type for server has changed: ",
libssh.SSH_KNOWN_HOSTS_UNKNOWN: "Host is unknown: "
}
def verify_knownhost(self):
state = libssh.ssh_session_is_known_server(self._libssh_session)
if state == libssh.SSH_KNOWN_HOSTS_OK:
return True
...
self._policy.missing_host_key(self, ...,
KNOW_HOST_MSG_MAP[state] + self._hash_py)

The hook name and the bundled AutoAddPolicy / RejectPolicy classes
follow paramiko. In paramiko that hook runs only for a host that is
absent from known_hosts; a mismatched key raises BadHostKeyException
before any policy is consulted. pylibssh keeps the name and widens the
meaning. The policy receives only a free-text message, not the libssh
state, so it cannot tell "new host" from "changed key".

ansible.netcommon's MyAddPolicy, documented as "Based on AutoAddPolicy
in paramiko", was written to the narrow meaning and adds changed keys:

# plugins/connection/libssh.py
def missing_host_key(self, session, hostname, username, key_type,
fingerprint, message):
if all((self._options["host_key_checking"],
not self._options["host_key_auto_add"])):
... prompt; if inp not in ["yes", "y", ""]: raise ...
session.hostkey_auto_add(username) # reached for CHANGED and OTHER

For comparison, libssh's own tutorial stops the connection on
SSH_KNOWN_HOSTS_CHANGED and SSH_KNOWN_HOSTS_OTHER, paramiko raises
BadHostKeyException, and OpenSSH StrictHostKeyChecking=accept-new adds
new keys but refuses changed ones.

Secondary issue: in an interactive run with default settings, the
prompt treats an empty answer (pressing Enter) as "yes", including when
the message says "Host key for server has changed".

Reproduction
------------

Local OpenSSH server on
https://www.google.com/url?q=http://127.0.0.1:2222&source=gmail&ust=1794584819676000&sa=E,
started first with host key A,
then restarted with host key B (standing in for an interceptor), with a
fresh ~/.ssh/known_hosts per scenario.

1. ansible.netcommon.libssh, ANSIBLE_LIBSSH_HOST_KEY_AUTO_ADD=true
run 1 (key A): task runs, A saved
run 2 (key B): task runs on the key-B server, no warning, B appended
2. network_cli, ssh_type=libssh, same setting
run 2 (key B): ok=1 failed=0, B appended; the key-B server's own
sshd log records "Accepted password" for the controller's user
3. Library level, same changed key and same auto-add mode:
ansible-pylibssh connects and authenticates
paramiko BadHostKeyException
OpenSSH accept-new refuses
4. Defaults, non-interactive, host unknown or already known:
fails closed, known_hosts unchanged (not affected)

Mitigation
----------

Until fixed releases are available:

- Do not enable host_key_auto_add for the libssh connection plugin and
do not use AutoAddPolicy with pylibssh. Pre-populate known_hosts
(for example with ssh-keyscan over a trusted path) instead.
- Keep host_key_checking enabled.
- Do not answer the interactive host key prompt with a bare Enter.

Fix
---

No fixed release had been announced at the time of writing. Suggested
fix: in pylibssh, fail closed on SSH_KNOWN_HOSTS_CHANGED and
SSH_KNOWN_HOSTS_OTHER before any policy runs and consult
missing_host_key() only for SSH_KNOWN_HOSTS_UNKNOWN; in
ansible.netcommon, have MyAddPolicy refuse changed keys and stop
treating an empty answer as consent.

References
----------

https://www.google.com/url?q=https://access.redhat.com/security/cve/CVE-2026-126641&source=gmail&ust=1794584819676000&sa=E
https://www.google.com/url?q=https://bugzilla.redhat.com/show_bug.cgi?id%3D2571719&source=gmail&ust=1794584819676000&sa=E
https://www.google.com/url?q=https://www.cve.org/CVERecord?id%3DCVE-2026-126641&source=gmail&ust=1794584819676000&sa=E
https://www.google.com/url?q=https://github.com/ansible/pylibssh&source=gmail&ust=1794584819676000&sa=E
https://www.google.com/url?q=https://github.com/ansible-collections/ansible.netcommon&source=gmail&ust=1794584819676000&sa=E

Timeline
--------

2026-10-22 Reported to security@...ible.com and Red Hat Product Security
2026-11-11 Red Hat confirms the issue and assigns CVE-2026-126641
2026-11-12 Red Hat lifts the embargo; CVE record published
2026-11-12 This post

Credit
------

Found and reported by Satriyo Utomo (aleens-labs).

Best regards,
Satriyo Utomo (aleens-labs)
Independent security researcher

