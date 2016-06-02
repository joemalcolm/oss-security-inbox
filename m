X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3290" "Wednesday" "1" "June" "2016" "17:25:02" "-0700" "morgan fainberg" "morgan.fainberg@gmail.com" "<76fe8eab-0a51-792e-b8d1-c566717f1e66@gmail.com>" "96" "[oss-security] [OSSA-2016-008] Incorrect Audit IDs in Keystone Fernet Tokens can result in revocation bypass (CVE-2016-4911)" nil nil nil "6" "2016060200:25:02" "[oss-security] [OSSA-2016-008] Incorrect Audit IDs in Keystone Fernet Tokens can result in revocation bypass (CVE-2016-4911)" (number mark "U       morgan.fainb Jun  1   96/3290  " thread-indent "\"[oss-security] [OSSA-2016-008] Incorrect Audit IDs in Keystone Fernet Tokens can result in revocation bypass (CVE-2016-4911)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21920 invoked by uid 550); 2 Jun 2016 00:25:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21876 invoked from network); 2 Jun 2016 00:25:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version;
        bh=UGnpHqpIj7rCXoLZafJw+4tkXHQ3JNngZ830o/tjcFw=;
        b=AyDzWxhi0uChJfUIQhjfw5ixKbrOz/SLSVOkDm0lI4JRUluOfoy6YBXXMEobUd4+8x
         +30Veny4kt5ckLbzFYypScjU19GvAgeAlpucBrwvoOsou4CWNcCutNl2PJy3szQ+uSlW
         MUBSTNa36rL4Q67cgze7wZcFxmEyvxAcM9j6JHym+UVTaa2KjGW8H6PHfVHkaFecw6fF
         rQP5tmOr9hUqwQkNqIzmxOttyayEtsekaWHFzNi4NHVEVMKXr9stJ37fPweP1QvzFRh5
         cSiijCpGFPj9FcgQ2xjLxhYrKc8MPV3r1lSukKcX4O8MMtjJcqNCKqgVw/ljyqPONCSh
         46MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=UGnpHqpIj7rCXoLZafJw+4tkXHQ3JNngZ830o/tjcFw=;
        b=MXtqx97hsWBfmuaL0N1F+XD+v4PEhDivv0EIDtOGgeYLxDCSTQMDRdMrA4fllRifwz
         c622R6C7+bIG7Mo/p3/rYkiA6VQXmGUEsXkVtt8Crkj9NnyOeaAYUn1g8a2wIc/bPTHW
         5hlWUavd0u24cu7CmbbvpKGSi+e1grO+hsc4qL4StgV2inDfLLK7zm9lfTDSpNKHEuHi
         PRvDlGn+xfihhDksxoI3KfMtnQ0/L4tizmjSdBxH/lNFItMir5pZcv+9FX0S4oih2r9P
         XkSnFxAduKe05DuD/pR84+XgeZ8jxtsFx/LSU1W3/lpfuXQN5dgMHXC9q+S+Z+uom1bU
         3pvw==
X-Gm-Message-State: ALyK8tK3II9bdEOS7T5Mv57ZHyJw7xg7wPJIMaIEUqhbwMycAsr3tEgp8vRfg7H3keOCZQ==
X-Received: by 10.98.3.135 with SMTP id 129mr14052847pfd.42.1464827104469;
        Wed, 01 Jun 2016 17:25:04 -0700 (PDT)
To: oss-security@lists.openwall.com
From: morgan fainberg <morgan.fainberg@gmail.com>
Message-ID: <76fe8eab-0a51-792e-b8d1-c566717f1e66@gmail.com>
Date: Wed, 1 Jun 2016 17:25:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="vwchENk0IML0oa8IvasX7DduEOaXna2JT"
Subject: [oss-security] [OSSA-2016-008] Incorrect Audit IDs in Keystone Fernet Tokens can
 result in revocation bypass (CVE-2016-4911)

--vwchENk0IML0oa8IvasX7DduEOaXna2JT
Content-Type: multipart/mixed; boundary="Mq3FD7rpHAAPfCGn8gJmiQegfpQxiV8Mo"
From: morgan fainberg <morgan.fainberg@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <76fe8eab-0a51-792e-b8d1-c566717f1e66@gmail.com>
Subject: [OSSA-2016-008] Incorrect Audit IDs in Keystone Fernet Tokens can
 result in revocation bypass (CVE-2016-4911)

--Mq3FD7rpHAAPfCGn8gJmiQegfpQxiV8Mo
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-008: Incorrect Audit IDs in Keystone Fernet Tokens can result in =
revocation bypass
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: May 23, 2016
:CVE: CVE-2016-4911


Affects
~~~~~~~
- Keystone: =3D=3D9.0.0


Description
~~~~~~~~~~~
Lance Bragstad (Rackspace) reported a vulnerability in the Keystone
Fernet Token Provider. By rescoping a token a user will receive a new
token without correct audit_ids, these incorrect audit_ids will
prevent the entire chain of tokens from being revoked properly. This
vulnerability does not impact revoking a token by its individual
audit_id. Only deployments with Keystone configured to use Fernet
tokens are impacted.


Patches
~~~~~~~
- https://review.openstack.org/#/c/312582/ (Mitaka)
- https://review.openstack.org/#/c/311886/ (Newton)


Credits
~~~~~~~
- Lance Bragstad from Rackspace (CVE-2016-4911)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1577558
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-4911


Notes
~~~~~
- This fix was included in the openstack/keystone 9.0.1 (mitaka) release.


--=20
Morgan Fainberg
OpenStack Vulnerability Management Team


--Mq3FD7rpHAAPfCGn8gJmiQegfpQxiV8Mo--

--vwchENk0IML0oa8IvasX7DduEOaXna2JT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXT3zeAAoJELmoPO+gfG2K1VkP/3xlUYHFkguILP8S2ES+viwd
YFylpPqhUwXHoxpxoNgthY1H6ZQwS9wcMDfj0Sjyqb1D+MdoiwCehhPyYLqCPJM3
le2ZwJ+TbeRezaaACZjwcmxLFNz4ku+5hyqTV6V1fiSs3bOSqLnNQvrETK/eHjKA
dfmMtFwX+ASmZriwM5WF23zYF5O5WZH0xo3dBHi+px9FBg05dEAfzKKKLQ9I07IM
CuMmQExC0fgHP94+u1um9yWMtH7m2jGuLpb7fo1JPGpQh2LaOySs/nV686GGCvJN
Se6z8XJLY4pj8wCR/x3tiwgke0mOwq7pgcrLVmbEEVv4XjiYRuhOsqnQ9Qtsbqjq
yAvgm9wxwA+zyNKX5p6xGCnk1SdhgLIafR8sUD5Jm7IeYNqixcJcd9YjTyf8abRe
hMtcPi8m48eiv1VZKeLchVscDBXDiHPEjc7ptY+Q5ajZZMXfAkFgu1wCOLv6n8vg
9IAqWAmU5vbG8ytPms1FcxMpb1r8rU9kd0Tsp390nwuxPLMixB/UqWwn8yN+9yRx
lvCJBZlEgst8f1cdG7RRDIngaJkKKRSP3teGWVob2Nz5h6YFx/KFpnG+mh9ZUoTQ
kO1MqnCkvmDEvC/isQCvMfQsTx9Q75DPsR1/yXmXLu6kGIivkYs53Xx3IEdJfXIl
zOi+I0qD+KJ8Zr1R1waE
=lQSD
-----END PGP SIGNATURE-----

--vwchENk0IML0oa8IvasX7DduEOaXna2JT--
