X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/2
Message-ID: <64f9e114-0c98-4308-b2af-013dcd7823d2@catalyst.net.nz>
Date: Wed, 29 Jul 2026 13:04:47 +1200
From: Douglas Bagnall <douglas.bagnall@...alyst.net.nz>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Heads-up: Upcoming important Samba security releases on 2026-07-28
Content-Type: text/plain; charset=utf-8

On 24/07/2026 09:38, Douglas Bagnall wrote:
> There will be a security release for Samba on Tuesday.

As below. I have forwarded the Samba mailing list announcement, then 
below that I have pasted non-repetitive details from the various links. 
In some cases there is more to be found on the Samba bugzilla.

Douglas



Release Announcements
---------------------

This is a security release in order to address the following defects:

o CVE-2026-6949:   TSIG packet with name compression can crash DNS

            Incorrect size calculations when a TSIG record
            contains compressed names can lead to a large
            out-of-bounds write causing the server to crash.

   https://www.samba.org/samba/security/CVE-2026-6949.html


o CVE-2026-58216:  An authenticated user could possibly crash a KDC
                    process

            A kpasswd packet that contains malformed ASN.1 might
            cause the server to access 6 bytes of unallocated
            memory. This memory is not exposed to the user, but
            in some circumstances the server could crash.

   https://www.samba.org/samba/security/CVE-2026-58216.html


o CVE-2026-58218:  DNS signing DoS via TKEY name cache exhaustion

            An unauthenticated user can repeatedly register names
            TKEY names, which floods a cache causing legitimate
            TKEYs to be expunged. This can practically block the
            use DNS TSIG signing.

   https://www.samba.org/samba/security/CVE-2026-58218.html


o CVE-2026-58221:  Samba AD authenticated LDAP access domain takeover

            Samba AD low-privilege authenticated LDAP access
            allows modifications to internal LDB special DNs,
            which permits a domain takeover.

   https://www.samba.org/samba/security/CVE-2026-58221.html


o CVE-2026-58222:  Samba AD LDAP Compare filter injection and
                    trusted-request confusion disclose protected
                    attributes

            An ordinary authenticated domain user can bypass
            access checks and query confidential Active Directory
            attributes (such as KDS root keys) via LDAP Compare
            requests. Due to a filter injection flaw and trusted
            execution context, the LDAP Compare operation can be
            turned into a protected-attribute disclosure oracle.

   https://www.samba.org/samba/security/CVE-2026-58222.html


o CVE-2026-58224:  The CTDB protocol has bounds checking issues

            CTDB fails to do integrity checking of received
            packets.  This includes failure to check field
            lengths against packet lengths when unmarshalling
            packets.

   https://www.samba.org/samba/security/CVE-2026-58224.html


Changes
-------

o  Douglas Bagnall <douglas.bagnall@...alyst.net.nz>
    * BUG 16087: CVE-2026-58216

o  Volker Lendecke <vl@...ba.org>
    * BUG 16115: CVE-2026-58218

o  Stefan Metzmacher <metze@...ba.org>
    * BUG 16083: CVE-2026-6949
    * BUG 16147: CVE-2026-58221
    * BUG 16148: CVE-2026-58222

o  Martin Schwenke <mschwenke@....com>
    * BUG 16085: CVE-2026-58224


#######################################
Reporting bugs & Development Discussion
#######################################

Please discuss this release on the samba-technical mailing list or by
joining the #samba-technical:matrix.org matrix room, or
#samba-technical IRC channel on irc.libera.chat.

If you do report problems then please try to send high quality
feedback. If you don't provide vital information to help us track down
the problem then you will probably be ignored.  All bug reports should
be filed under the Samba 4.1 and newer product in the project's Bugzilla
database (https://bugzilla.samba.org/).


======================================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
======================================================================


* Individual bug advisories follow.


===========================================================
== Subject:     TSIG packet with name compression can crash DNS
==
== CVE ID#:     CVE-2026-6949
==
== Versions:    All versions since 4.0
==

== Summary:     Incorrect size calculations when a TSIG record
                 contains compressed names can lead to a large
		out-of-bounds write causing the server to crash.

===========================================================

===========
Description
===========

To calculate the size of a DNS packet region signed by a TSIG record,
Samba's internal DNS server subtracted the presumed size of the TSIG
record. In cases where the record used name compression, an incorrect
calculation could be made. Usually this manifests as a signing
failure, but in extreme cases the TSIG record was assumed to be bigger
than the entire packet, wrapping the presumed size of the signed
portion to a very large integer. Efforts to copy this portion
inevitably hit unallocated memory.

==================
CVSSv3 calculation
==================

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N (7.5)

==========
Workaround
==========

The BIND9 DLZ is not affected.

=======
Credits
=======

Originally reported by Arjun Basnet of Securin Labs, with further
analysis by Douglas Bagnall of Catalyst and the Samba team.

Also reported by Andrew Tridgell of the Samba Team.

Patches provided by Stefan Metzmacher of the Samba team.


===========================================================
== Subject:     An authenticated user could possibly crash a KDC process
==
== CVE ID#:     CVE-2026-58216
==
== Versions:    All versions since 4.0
==

== Summary:     A kpasswd packet that contains malformed ASN.1 might cause
                 the server to access 6 bytes of unallocated memory. 
This memory
		is not exposed to the user, but in some circumstances the server
		could crash.

===========================================================

===========
Description
===========

A miscalculation means an ASN.1 structure used in a Kerberos password
change is assumed to be six bytes bigger than it is. This does not
affect ordinary packets (the ASN.1 itself contains the correct size),
but a crafted ANS1 packet could force up to six unallocated bytes to
be read. The usual outcome of this will be a decryption failure and an
error message, but it could make the server process crash.

==================
CVSSv3 calculation
==================

CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:N/A:H  5.3

==========
Workaround
==========

Setting the smb.conf option "kpasswd port = 0" will disable the
kpasswd service.

The attack seems quite unreliable in practice, so an attacker might be
observed making thousands of kpasswd attempts before succeeding.
Rate-limiting traffic to the kpasswd port might be useful.

=======
Credits
=======

Originally reported by Tristan Madani (@TristanInSec), Talence Security.

Patch provided by Douglas Bagnall of the Samba team.

==========================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
==========================================================


===========================================================
== Subject:     DNS signing DoS via TKEY name cache exhaustion
==
== CVE ID#:     CVE-2025-58218
==
== Versions:    All versions since 4.0
==

== Summary:     An unauthenticated user can repeatedly register names
                 TKEY names, which floods a cache causing legitimate
		TKEYs to be expunged. This can practically block the use
		DNS TSIG signing.

===========================================================

===========
Description
===========

Only authenticated users are supposed to be able to use TKEY DNS
records to register shared secrets for use with TSIG queries. Samba
has been rejecting unauthenticated queries, but only after registering
the TKEY names in a cache used to filter out TSIG requests.

By flooding the DNS server with TKEY requests with arbitrary names,
an attacker can block legitimate TSIG use.

This bug exacerbates CVE-2026-6949 (crafted TSIG packet can crash the
DNS server) because it means the attacker there does not need to be
authenticated.


==================
CVSSv3 calculation
==================

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L (5.3)

==========
Workaround
==========

The BIND9 DLZ is not affected.

=======
Credits
=======

Originally reported by Andrew Tridgell of the Samba Team.

Also reported by Tristan Madani of Talence Security.

Patches provided by Volker Lendecke of the Samba team.




==================================================================
== Subject:     Samba AD authenticated LDAP access domain takeover
==
== CVE ID#:     CVE-2026-58221
==
== Versions:    Samba AD DC versions 4.0.0 and later
==
== Summary:     Samba AD low-privilege authenticated LDAP access
==              allows modifications to internal LDB special DNs,
==              which permits a domain takeover.
==================================================================

===========
Description
===========

Samba AD stores internal database configuration in LDB special records
such as @MODULES and @PARTITION. These records are not directory
objects and should never be writable by a normal LDAP client.

An authenticated low-privilege domain user can nevertheless modify
them through LDAP. The LDAP request is correctly marked as untrusted,
but `rootdse_filter_operations()` only rejects anonymous callers. The
request then reaches the DSDB ACL module, which intentionally skips
ACL processing for special DNs because it assumes only trusted
internal callers can reach them.

This lets an ordinary user replace the DSDB module chain loaded for
new LDAP connections. By omitting only acl and aclread, the attacker
gets a fully functional LDAP connection without directory ACL
enforcement and can add themselves to protected administrator groups.

High-signal indicators:

- A recent modification timestamp of the main sam.ldb
   most likely: /var/lib/samba/private/sam.ldb
- LDAP operations targeting DNs beginning with `@`;
- `@...ULES/@...T` differing from `samba_dsdb`;
- unexpected `@...TITION/modules` values on a standard provision;
- low-privilege accounts added to `Domain Admins`, `Enterprise Admins`, or
   `Builtin Administrators`;
- Samba logs showing unusual module-load failures or module-stack changes.

If exploitation is suspected:

1. Stop Samba before editing internal LDB records offline.
2. Confirm `@...ULES/@...T` is exactly `samba_dsdb`.
3. Remove unexpected `@...TITION/modules` values offline if present.
4. Remove unauthorized protected-group memberships.
5. Audit privileged group, ACL, GPO/SYSVOL, service-account, and replication
    changes made during the compromise window.
6. Rotate credentials according to the site's AD recovery plan, including
    KRBTGT where appropriate.

==================
CVSSv3 calculation
==================

CVSS:AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H (8.8)

==========
Workaround
==========

There are no known workarounds for this vulnerability. Administrators are
advised to apply the security updates or patches as soon as possible.

In order to audit related changes and find the account that tries
the modifications, you can setup one or more log levels of:
dsdb_audit, dsdb_json_audit, dsdb_group_audit, dsdb_group_json_audit
See 'man smb.conf' for setup details.

=======
Credits
=======

Originally reported by OpenAI Security Research.

Patches provided by Stefan Metzmacher of the SerNet and the Samba team.


==========================================================================
== Subject:     Samba AD LDAP Compare filter injection and trusted-request
==              confusion disclose protected attributes
==
== CVE ID#:     CVE-2026-58222
==
== Versions:    Samba AD DC versions 4.0.0 and later
==
== Summary:     An ordinary authenticated domain user can bypass access
==              checks and query confidential Active Directory attributes
==              (such as KDS root keys) via LDAP Compare requests. Due to
==              a filter injection flaw and trusted execution context, the
==              LDAP Compare operation can be turned into a
==              protected-attribute disclosure oracle.
==========================================================================

===========
Description
===========

Samba's LDAP CompareRequest path contains two independent security
flaws that can be combined by an authenticated attacker to construct a
reliable oracle for protected (confidential) Active Directory
attributes.

1. Filter Injection Flaw

When processing an LDAP Compare request, Samba constructs a textual
LDB filter by directly formatting the user-provided attribute name and
assertion value into a search filter string using talloc_asprintf():

     filter = talloc_asprintf(local_ctx, "(%s=%*s)", req->attribute,
                              (int)req->value.length, req->value.data);

This formulation is unsafe because:
- The attribute name is not validated as a valid LDAP AttributeDescription.
- The assertion value is not escaped.
- The field format (%*s) does not properly handle binary or BER-encoded 
bytes.

By providing an attribute name containing filter operators (for
example, appending ">=" to the attribute name), an attacker can coerce
Samba into evaluating a comparison operator other than equality.

2. Trusted Search Context Flaw
Samba evaluates the generated filter using an internal local LDB
search request without marking it as untrusted. Normal LDAP search
requests enforce access controls by marking requests from unprivileged
connections as untrusted. The ACL read module uses this marker to
determine whether it must enforce visibility checks. Because Compare
requests do not mark the database search as untrusted, they are
evaluated with trusted system-level visibility, bypassing standard ACL
checks for confidential attributes.

Combining these two flaws, an ordinary authenticated domain user can
issue ordered true/false Compare queries (e.g. using inequality
operators like ">=") to binary-search and reconstruct binary values of
confidential attributes that are normally redacted from LDAP Search
results.

A key target for this attack is the msKds-RootKeyData attribute, which
contains the root secret for the Group Key Distribution Service
(GKDI). On Samba AD DC installations supporting Group Managed Service
Accounts (gMSAs) (Samba 4.21.0 and later), an attacker can extract
this key and derive the passwords of gMSAs offline. If a privileged
gMSA exists, this allows full domain compromise.

==================
CVSSv3 calculation
==================

CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H (8.8)

Severity is High for generic protected-attribute disclosure, and
Critical when disclosed KDS roots are used to compromise privileged
gMSAs.

==========
Workaround
==========

There are no known workarounds for this vulnerability. Administrators
are advised to apply the security updates or patches as soon as
possible.

=======
Credits
=======

Originally reported by OpenAI Security Research.

Underlying bugs also reported by Andrew Tridgell of the Samba Team and
Tristan Madani of Talence Security.

Patches provided by Stefan Metzmacher of the SerNet and the Samba
team.



===========================================================
== Subject:     The CTDB protocol has bounds checking issues
==
== CVE ID#:     CVE-2026-58224
==
== Versions:    All versions since 4.2
==

== Summary:     CTDB fails to do integrity checking of received
                 packets.  This includes failure to check field lengths
                 against packet lengths when unmarshalling packets.

===========================================================

===========
Description
===========

CTDB fails to do a number of integrity checks on received packets.
This includes:

* checking of field lengths against packet lengths when unmarshalling
   packets;
* edge-case checking of string NUL-termination; and
* sanity checking of overall packet lengths.

This can result in denial of service (DoS) (due to crash or out-of
memory) and possible limited disclosure of adjacent memory
allocations.

Most of the issues are in the protocol handling for the CTDB private
network. Some are in handling of the CTDB event protocol, used on a
local Unix domain socket.

The impact is mitigated by documented protections that should be in
place on the CTDB private network:

   It is strongly recommended that the private addresses are configured
   on a private network that is separate from client networks.  This is
   because the CTDB protocol is both unauthenticated and unencrypted.
   [...]

Overall sanity checking of packet lengths to avoid out-of-memory DoS
is not being addressed. No size limit is currently placed on packets
sent by CTDB, so implementing an arbitrary restriction on the size of
received packets could result in the rejection of valid packets.

Part of the solution to all of these issues is strengthening the
documentation about securing the private network.


==================
CVSSv3 calculation
==================

CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:H 7.1

==========
Workaround
==========

Secure the CTDB private network, as documented.

=======
Credits
=======

The top-level CTDB protocol issues were originally reported by Tristan
Madani of Talence Security.

Out-of-memory DoS issues, along with issues in the event protocol and
the control part of the main protocol were reported by Andrew
Tridgell.

Further issues were discovered by Martin Schwenke of the Samba team
while fixing the above issues and auditing other code paths.

Patches provided by Martin Schwenke of the Samba team.


