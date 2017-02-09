X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6588" "Thursday" "9" "February" "2017" "11:16:15" "+0000" "Luke Hinds" "lhinds@redhat.com" "<6c71919a-b02d-1614-1738-e6ee2d7aee44@redhat.com>" "144" "[oss-security] [OpenStack OSSN 0065] Users of Glance may be able to replace active image data" nil nil nil "2" "2017020911:16:15" "[oss-security] [OpenStack OSSN 0065] Users of Glance may be able to replace active image data" (number mark "U       lhinds@redha Feb  9  144/6588  " thread-indent "\"[oss-security] [OpenStack OSSN 0065] Users of Glance may be able to replace active image data\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7543 invoked by uid 550); 9 Feb 2017 14:36:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10174 invoked from network); 9 Feb 2017 11:16:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=NgO1tFauZEqCSg4SqDKxw4acKiKgd6f/cl2uw11TJsE=;
        b=gV6zzjQQ3wWZn/PElGNM2iDBJMv8vvNI3rUBQy9igaJ+Ih/fiB59V3JOINnZ9y60rv
         ekFSA+uHaBLYOppxazxhcA9IyAu/YOvbNCRxEDfVeM5KVtsDdJyUBiw8lzHiRq4fGhri
         G2sr6kVCJKvW/elyPIMCZLjy35zirhA53tRuPybQn4BmMngOr2A0AJV/Qwhl88rmLdAl
         g9oGmxIteLKQ/s2J4G4TlVVcCnpkdK2/kdXmVsAKE1Vo6wRnFGt2iwt/izxaoH6i/kK9
         4+5ApheIyJQvWv8K46u+oCibrPnCNT4opZhJDl1aaf4Zr2Ff8XeF583PI7R2DNjzObBb
         6TAg==
X-Gm-Message-State: AMke39n2VQA991ydYaRcAldaSR5PTzD0tKqYu8VD0v2zNqNT+J/QR1O8gAFKhfquSmpVnj/U
X-Received: by 10.223.130.204 with SMTP id 70mr2249416wrc.128.1486638985976;
        Thu, 09 Feb 2017 03:16:25 -0800 (PST)
To: oss-security <oss-security@lists.openwall.com>
From: Luke Hinds <lhinds@redhat.com>
Message-ID: <6c71919a-b02d-1614-1738-e6ee2d7aee44@redhat.com>
Date: Thu, 9 Feb 2017 11:16:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bfvIPnQKpRCD9ho56ctiX1OWBaqegpcc9"
Subject: [oss-security] [OpenStack OSSN 0065] Users of Glance may be able to replace active
 image data

--bfvIPnQKpRCD9ho56ctiX1OWBaqegpcc9
Content-Type: multipart/mixed; boundary="CaWsOnhoKfNikls22NvdxTRKwNDs8LuTc";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <6c71919a-b02d-1614-1738-e6ee2d7aee44@redhat.com>
Subject: [OpenStack OSSN 0065] Users of Glance may be able to replace active
 image data

--CaWsOnhoKfNikls22NvdxTRKwNDs8LuTc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



Users of Glance may be able to replace active image data
---

### Summary ###
When Glance has been configured with the "show_multiple_locations"
option enabled with default policy for set and delete locations, it is
possible for a non-admin user having write access to the image metadata
to replace active image data.

### Affected Services / Software ###
Glance, Havana, Icehouse, Juno, Kilo, Liberty, Mitaka, Newton, Ocata

### Discussion ###

As a convenience to operators, Glance has a multiple location feature,
disabled by default, that allows a single image to be stored in multiple
places. This is intended to offer an extra degree of resilience by
improving the availability of Glance images. This feature involves a
user setting a new entry in an image's 'locations' list, not visible to
users by default, via the Glance API. However, this process does not
involve taking a checksum of the data in a newly created image location,
and hence does not involve comparing the 'checksum' field of the image
(which is always visible to users) with the checksum of any added
locations. This design opens the possibility that a malicious user
could create an image in Glance, set an additional location on that
image pointing to an altered image, then delete the original location,
so that consumers of the original image would unwittingly be using the
malicious image. Note, however, that this attack vector cannot change
the original image's checksum, and it is limited to images that are
owned by the attacker.

### Recommended Actions ###

The reach of this attack depends upon how broadly usage of the original
image is spread among consumers who do not checksum images before they
are used. Glance enables three ways for an image to be made
available to other users:

1 Making an image "public". This makes an image available to all users
  of a cloud. The ability to do this is governed by the
  'publicize_image' policy, which is restricted to the admin role by
  default since the Juno release.

2 Making an image "community". *This feature is only available since
  Ocata.* This makes an image available to all users of a cloud, but
  unlike a "public" image, it does not appear in the default image-list
  response of any user (other than the owner). It is governed by the
  'communitize_image' policy, which is unrestricted by default.

3 Making an image "shared". Glance allows project-to-project image
  sharing, in which a user in project A shares an image with project B
  by making project B a *member* of the image. The ability to do this
  is governed by the 'add_member' policy, which is unrestricted by
  default.

  * Project-to-project sharing is the default, based on the
    'owner_is_tenant' configuration setting in Glance. In a cloud
    configured so that 'owner_is_tenant' is false, image sharing is
    user-to-user. This is a cloud-wide configuration, users may not
    determine whether sharing is project-to-project or owner-to-owner.

Note that what has been discussed so far is independent of the specific
vulnerability discussed in this notice. We encourage cloud operators to
review their current settings for the policies mentioned above. In
particular, we recommend that the 'publicize_image' policy be restricted
to admins (as it has been by default since the Juno release) so that
users can rely on the trustworthiness of a "public" image.

With respect to the image location vulnerability described above, we
recommend that operators review the settings of the following
configuration options and policies:

* The configuration option 'show_multiple_locations'. If this is set to
  False, this attack vector is not available.

* The policy 'set_image_location'. When 'show_multiple_locations' is
  set to True, we recommend that this policy be restricted to
  administrators, and if necessary, to trusted users. It is currently
  unrestricted by default.

* The policies 'get_image_location' and 'delete_image_location'. These
  policies are unrestricted by default (but note that if
  'show_multiple_locations' is False, they do not come into play).

Additionally, image consumers should be encouraged to checksum images
they consume and compare the result to the 'checksum' field in the
response from the Images API.

Finally, in addition to reviewing the specific location policy targets
mentioned above, we encourage operators to review the 'default' target
in their Glance policy.json file. This target is used when the software
references a policy target that is not specifically defined in the
policy.json file, as may happen when new targets are introduced in the
software but the policy file being used is from a prior release. Since
Newton, Glance has shipped with "default":"role:admin", but prior to
that, Glance shipped with "default":"", which would make any target not
specifically mentioned in the file unrestricted.

### Contacts / References ###
Author: Robert Clark, IBM
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0065
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1549483
OpenStack Security ML : openstack-security@lists.openstack.org
OpenStack Security Group : https://launchpad.net/~openstack-ossg
Multiple Image Location BP :
https://blueprints.launchpad.net/glance/+spec/multiple-image-locations



--CaWsOnhoKfNikls22NvdxTRKwNDs8LuTc--

--bfvIPnQKpRCD9ho56ctiX1OWBaqegpcc9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFGBAEBCAAwFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAlicT38SHGxoaW5kc0By
ZWRoYXQuY29tAAoJEPFlVhc8ICYUkVsH/A/C+aWoYTDLPQS68JsQN+LukwSBWb/z
jwCy4RXFWM/rYqB7xBOmeZGd18nPskEFAs1Z91V3wndzcq2aLLSuKhLg/95H5X6c
T6NsqlEjfCODjnRVZI/DDHjU9KwT13K1g3DcXjNvuiQvCeanNH4WN3O8xiE6IYWq
RyyPCGt9Uxu4qfBhCij3unvAa9IvxTH/0TWr/Cldp+YbwaI3g/MH5/s7ed4OfOjk
1N73m8S69OikOu30nAL3AD7jG7J78WbK8sIMT0S14Ib0EqrqhkFD4t1uLwEc25IC
lvtfVMlb6JWnGv8oTMqEQE3dmih6X5/K4IhQTPLgJ+P1BO5AbGKp3Eo=
=oFaJ
-----END PGP SIGNATURE-----

--bfvIPnQKpRCD9ho56ctiX1OWBaqegpcc9--
