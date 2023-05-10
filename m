Received: (qmail 3138 invoked by uid 550); 10 May 2023 17:21:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3105 invoked from network); 10 May 2023 17:21:14 -0000
Date: Wed, 10 May 2023 17:21:01 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230510172100.p2rq3rouwj235hji@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xubsnomqmaqh7clj"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2023-003] cinder, glance_store, nova, os-brick: Unauthorized
 volume access through deleted volume attachments (CVE-2023-2088)

--xubsnomqmaqh7clj
Content-Type: multipart/mixed; boundary="h4tcf7by2gywk6dd"
Content-Disposition: inline


--h4tcf7by2gywk6dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
OSSA-2023-003: Unauthorized volume access through deleted volume attachments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

:Date: May 10, 2023
:CVE: CVE-2023-2088


Affects
~~~~~~~
- Cinder: <20.2.1, >=3D21.0.0 <21.2.1, =3D=3D22.0.0
- Glance_store: <3.0.1, >=3D4.0.0 <4.1.1, >=3D4.2.0 <4.3.1
- Nova: <25.1.2, >=3D26.0.0 <26.1.2, =3D=3D27.0.0
- Os-brick: <5.2.3, >=3D6.0.0 <6.1.1, >=3D6.2.0 <6.2.2


Description
~~~~~~~~~~~
An unauthorized access to a volume could occur when an iSCSI or FC
connection from a host is severed due to a volume being unmapped on
the storage system and the device is later reused for another volume
on the same host.

**Scope:** Only deployments with iSCSI or FC volumes are affected.
However, the fix for this issue includes a configuration change in
Nova and Cinder that may impact you on your next upgrade regardless
of what backend storage technology you use. See the *Configuration
change* section below, and item 4(B) in the *Patches and Associated
Deployment Changes* for details.

This data leak can be triggered by two different situations.

**Accidental case:** If there is a problem with network connectivity
during a normal detach operation, OpenStack may fail to clean the
situation up properly. Instead of force-detaching the compute node
device, Nova ignores the error, assuming the instance has already
been deleted. Due to this incomplete operation OpenStack may end up
selecting the wrong multipath device when connecting another volume
to an instance.

**Intentional case:** A regular user can create an instance with a
volume, and then delete the volume attachment directly in Cinder,
which neglects to notify Nova. The compute node SCSI plumbing (over
iSCSI/FC) will continue trying to connect to the original
host/port/LUN, not knowing the attachment has been deleted. If a
subsequent volume attachment re-uses the host/port/LUN for a
different instance and volume, the original instance will gain
access to it once the SCSI plumbing reconnects.

Configuration Change
--------------------
To prevent the intentional case, the Block Storage API provided by
Cinder must only accept attachment delete requests from Nova for
instance-attached volumes. A complicating factor is that Nova
deletes an attachment by making a call to the Block Storage API on
behalf of the user (that is, by passing the user's token), which
makes the request indistinguishable from the user making this
request directly. The solution is to have Nova include a service
token along with the user's token so that Cinder can determine that
the detach request is coming from Nova. The ability for Nova to pass
a service token has been supported since Ocata, but has not been
required until now. Thus, deployments that are not currently sending
service user credentials from Nova will need to apply the relevant
code changes and also make configuration changes to solve the
problem.

Patches and Associated Deployment Changes
-----------------------------------------
Given the above analysis, a thorough fix must include the following
elements:

1. The os-brick library must implement the ``force`` option for
   fibre channel, which which has only been available for iSCSI
   until now (covered by the linked patches).

2. Nova must call os-brick with the ``force`` option when
   disconnecting volumes from deleted instances (covered by the
   linked patches).

3. In deployments where Glance uses the cinder glance_store driver,
   glance must call os-brick with the ``force`` option when
   disconnecting volumes (covered by the linked patches).

4. Cinder must distinguish between safe and unsafe attachment delete
   requests and reject the unsafe ones. This part of the fix has two
   components:

   a. The Block Storage API will return a 409 (Conflict) for a
      request to delete an attachment if there is an instance
      currently using the attachment, **unless** the request is
      being made by a service (for example, Nova) on behalf of a
      user (covered by the linked patches).

   b. In order to recognize that a request is being made by a
      service on behalf of a user, Nova must be configured to send a
      service token along with the user token. If this configuration
      change is not made, the cinder change will reject **any**
      request to delete an attachment associated with a volume that
      is attached to an instance. Nova must be configured to send a
      service token to Cinder, and Cinder must be configured to
      accept service tokens. This is described in the following
      document and **IS NOT AUTOMATICALLY APPLIED BY THE LINKED
      PATCHES:** (Using service tokens to prevent long-running job
      failures)
      https://docs.openstack.org/cinder/latest/configuration/block-storage/=
service-token.html
      The Nova patch mentioned in step 2 includes a similar document
      more focused on Nova:
      doc/source/admin/configuration/service-user-token.rst

5. The cinder glance_store driver does not attach volumes to
   instances; instead, it attaches volumes directly to the Glance
   node. Thus, the Cinder change in step 4 will recognize an
   attachment-delete request coming from Glance as safe and allow
   it. (Of course, we expect that you will have applied the patches
   in steps 1 and 3 to your Glance nodes.)




Errata
~~~~~~
An additional nova patch is required to fix a minor regression in periodic =
tasks and some nova-manage actions (errata 1). Also a patch to tempest is n=
eeded to account for behavior changes with fixes in place (errata 2).



Patches
~~~~~~~
- https://review.opendev.org/882836 (2023.1/antelope cinder)
- https://review.opendev.org/882851 (2023.1/antelope glance_store)
- https://review.opendev.org/882858 (2023.1/antelope nova)
- https://review.opendev.org/882859 (2023.1/antelope nova errata 1)
- https://review.opendev.org/882843 (2023.1/antelope os-brick)
- https://review.opendev.org/882835 (2023.2/bobcat cinder)
- https://review.opendev.org/882834 (2023.2/bobcat glance_store)
- https://review.opendev.org/882847 (2023.2/bobcat nova)
- https://review.opendev.org/882852 (2023.2/bobcat nova errata 1)
- https://review.opendev.org/882840 (2023.2/bobcat os-brick)
- https://review.opendev.org/882876 (2023.2/bobcat tempest errata 2)
- https://review.opendev.org/882869 (Wallaby nova)
- https://review.opendev.org/882870 (Wallaby nova errata 1)
- https://review.opendev.org/882839 (Xena cinder)
- https://review.opendev.org/882855 (Xena glance_store)
- https://review.opendev.org/882867 (Xena nova)
- https://review.opendev.org/882868 (Xena nova errata 1)
- https://review.opendev.org/882848 (Xena os-brick)
- https://review.opendev.org/882838 (Yoga cinder)
- https://review.opendev.org/882854 (Yoga glance_store)
- https://review.opendev.org/882863 (Yoga nova)
- https://review.opendev.org/882864 (Yoga nova errata 1)
- https://review.opendev.org/882846 (Yoga os-brick)
- https://review.opendev.org/882837 (Zed cinder)
- https://review.opendev.org/882853 (Zed glance_store)
- https://review.opendev.org/882860 (Zed nova)
- https://review.opendev.org/882861 (Zed nova errata 1)
- https://review.opendev.org/882844 (Zed os-brick)


Credits
~~~~~~~
- Jan Wasilewski from Atman (CVE-2023-2088)
- Gorka Eguileor from Red Hat (CVE-2023-2088)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2004555
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2023-2088


Notes
~~~~~
- Limited Protection Against Accidents... If you are only concerned with
  protecting against the accidental case described earlier in this document,
  steps 1-3 above should be sufficient. Note, however, that only applying s=
teps
  1-3 leaves your cloud wide open to the intentional exploitation of this
  vulnerability. Therefore, we recommend that the full fix be applied to all
  deployments.
- Using Configuration as a Short-Term Mitigation... An alternative approach=
 to
  mitigation can be found in OSSN-0092
  https://wiki.openstack.org/wiki/OSSN/OSSN-0092
- The stable/xena and stable/wallaby branches are under extended maintenance
  and will receive no new point releases, but patches for them are provided=
 as
  a courtesy where available.


OSSA History
~~~~~~~~~~~~
- 2023-05-10 - Errata 2
- 2023-05-10 - Errata 1
- 2023-05-10 - Original Version

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--h4tcf7by2gywk6dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="OSSN-0092.txt"

Using Configuration as a Short-Term Mitigation for OSSA-2023-003
---

### Summary ###
An unauthorized access to a volume could occur when an iSCSI or FC
connection from a host is severed due to a volume being unmapped on
the storage system and the device is later reused for another volume
on the same host.

### Affected Services / Software ###
- cinder: <20.2.1, >=21.0.0 <21.2.1, ==22.0.0
- glance_store: <3.0.1, >=4.0.0 <4.1.1, >=4.2.0 <4.3.1
- nova: <25.1.2, >=26.0.0 <26.1.2, ==27.0.0
- os-brick: <5.2.3, >=6.0.0 <6.1.1, >=6.2.0 <6.2.2

### Discussion ###
It is recommended to apply the fixes provided in OSSA-2023-003
https://security.openstack.org/ossa/OSSA-2023-003.html but updating
an OpenStack deployment may take a long time requiring a proper
maintenance window and may even require a validation process of the
release prior to the deployment, so operators may prefer applying
tactical configuration changes to their cloud to prevent harmful
actions while they go through their standarized process.

In this case the fastest way to prevent an unsafe attach deletion is
twofold:
    1. ensuring that Nova uses a user with a service role to send
    its token on all the requests made to Cinder on behalf of users,
    and
    2. Cinder protects the vulnerable APIs via policy.

### Recommended Actions ###
If the deployment has Glance using Cinder as a backend, in order to
use this alternative short-term mitigation, Glance must be
configured to use a single user having the service role for all its
requests to Cinder. If your deployment is *not* using a single user
(that is, instead of all the image-volumes being stored in a single
project, they are stored in each user's project), then you cannot
use this Short-Term Mitigation strategy, but must instead apply the
full change described in the previous section.

Steps for Mitigation:
A. Ensure the users used by Nova (and Glance, if applicable) have
the service role
      * In Nova, this is the user configured in the [service_user]
        section of nova.conf
      * In Glance, this user will only be defined if you are using
        Cinder as a Glance storage backend. It is defined in the
        [cinder] section of glance.conf
        ** if you do not use Cinder as a backend for Glance, you do
        not need to define a service user for Glance

B. Configure Nova to send the service token
https://docs.openstack.org/cinder/latest/configuration/block-storage/service-token.html
      * Glance does not have the ability to send a service token to
        Cinder; instead, the mitigation-by-policy strategy described
        below relies upon the user configured in glance in the
        [cinder]/cinder_store_user_name option in glance.conf having
        been granted the service role in Keystone

C. Configure the cinder policies as per
https://docs.openstack.org/cinder/latest/configuration/block-storage/policy-config-HOWTO.html
to have the following:

    "is_service":
        "role:service or service_user_id:<nova_service_uuid>"
    "volume:attachment_delete":
        "rule:xena_system_admin_or_project_member and rule:is_service"
    "volume_extension:volume_actions:terminate_connection":
        "rule:xena_system_admin_or_project_member and rule:is_service"
    "volume_extension:volume_actions:detach":
        "rule:xena_system_admin_or_project_member and rule:is_service"
    "volume_extension:volume_admin_actions:force_detach":
        "!"

    Notes:
          - The operator should replace "<nova_service_uuid>" with
            the actual UUID of the user configured in the
            [service_user] section of nova.conf
          - If the role name in Keystone to identify a service is
            not "service"' then the operator should also replace
            "role:service" accordingly and also make appropriate
            adjustment to the
            [keystone_authtoken]/service_token_roles setting in your
            cinder configuration file.
          - It may not be obvious why there are four policy targets
            defined. It's because the Block Storage API v3 provides
            four different API calls by which an attachment-delete
            may be accomplished:
            ** DELETE /v3/attachments/{attachment_id}
               (introduced in microversion 3.27, the preferred way to do this)
            ** POST /v3/volumes/{volume_id}
               with 'os-detach' action in the request body
            ** POST /v3/volumes/{volume_id}
               with 'os-terminate_connection' action in the request body
            ** POST /v3/volumes/{volume_id}
               with 'os-force_detach' action in the request body

Limitations:
The drawback to this configuration-only approach is that while it
protects against the intentional case described earlier, it does not
protect against the accidental case. Additionally, it is not
fine-grained enough to distinguish acceptable end-user Block Storage
API attachment-delete requests from unsafe ones (the Cinder code
change is required for that). For these reasons, we emphasize that
this is only a short-term mitigation, and we recommend that the full
fix be applied as soon as possible in your deployment.

Warning:
Note that if you deploy this short-term mitigation, you should roll
back the policy changes after the full fix is applied, or end users
will continue to be unable to make acceptable attachment-delete
requests.

### Credits ###
Jan Wasilewski, Atman
Gorka Eguileor, Red Hat

### Contacts / References ###
Authors:
- Brian Rosmaita, Red Hat
- Dan Smith, Red Hat
- Gorka Eguileor, Red Hat
- Jeremy Stanley, OpenInfra Foundation
- Nick Tait, Red Hat
This OSSN: https://wiki.openstack.org/wiki/OSSN/OSSN-0092#Discussion
Original Launchpad bug: https://launchpad.net/bugs/2004555
Mailing List : [security-sig] tag on openstack-discuss@lists.openstack.org
OpenStack Security Project : https://launchpad.net/~openstack-ossg
CVE: CVE-2023-2088

--h4tcf7by2gywk6dd--

--xubsnomqmaqh7clj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmRb0nxfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCk6lxAAteuWu1RMLVuqmD90XV8Hp9BSN6/qQoNFFVWpKz/4ThnkrpA7UPsmY9Pl
FIgrghAl008KWsLxJpDjHTVTWbCzh+Tay5qdcumvcUvVNTCTYE6gSPW2OUoxqoAw
OdK/MNIFgr3mKjCUWIzOJ21SSsAqUyIKy20KQmQDyu4CDSbrGmyRIFfpJ0k//+PT
mXKhXElhQCltC9uzUTNG3OvQnlgWQ0maIgur3G/lqcLoXa1el1POxfFg6O+vUnVm
rVbF7WFzLf/fZWyhbj0/RezXxe9C5dAHuMOCeuOBqn7Br6l1nZ2rl08LciYwaqYW
Pt5zH3uTrEy0/hCeDOTnjzmDFDuzvIWrGY6ct2FfWDEajLX/SfOkwELsI2l6GLpn
NewZRPoY3r//eYbsD5T8OkptFG3dxG7EI0VOuMAEzrCTG6BXoJiryrI8QvqiNNdg
/PjkQftgaYkEIkOb8fyvuTPyBhF7LRVZnrJXOOsMfgeV5NW+lV7GhUlcHUpHMZky
7osHoAUZNemielopH1BJzbKzGcXGAU/GOUVQaxeVdH9g7+cOa4dTWyGkWR5ULFbT
CWs3SO5cD3gkpZrFhtMznh/waon5tLoLrhnK+piy0ZoMqlPY+ezdHsFOfW4cJgah
NHfL1njxQEsyqB84hLvgcvqD6fKT3LgukNO0pyzHRaTAiQcIDLs=
=DQpV
-----END PGP SIGNATURE-----

--xubsnomqmaqh7clj--
