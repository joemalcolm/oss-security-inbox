X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5333" "Friday" "25" "November" "2016" "09:02:28" "+0100" "Johannes Segitz" "jsegitz@suse.com" "<20161125080228.GE31181@suse.com>" "173" "[oss-security] CVE Request: salt confidentiality issue" nil nil nil "11" "2016112508:02:28" "[oss-security] CVE Request: salt confidentiality issue" (number mark "U       jsegitz@suse Nov 25  173/5333  " thread-indent "\"[oss-security] CVE Request: salt confidentiality issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22344 invoked by uid 550); 25 Nov 2016 13:29:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7418 invoked from network); 25 Nov 2016 08:02:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 25 Nov 2016 09:02:28 +0100
From: Johannes Segitz <jsegitz@suse.com>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20161125080228.GE31181@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MIdTMoZhcV1D07fI"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: salt confidentiality issue

--MIdTMoZhcV1D07fI
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Dario Leidi from the SUSE Manager Team identified an issue in Salt. Please
issue a CVE for this.

We contacted the salt security team, according to their (very quick and
friendly) reply this is fixed by the 'rotate_aes_key' parameter=20
https://docs.saltstack.com/en/2015.8/ref/configuration/master.html#rotate-a=
es-key.
that was introduced in 2015.8.11 to correct this issue. It is on by
default, so the user would have to change that to be vulnerable.

Darios detailed writeup:

- Overview

Salt minions (clients), come with a descriptive id and a crypto key
each. Attaching a minion to a master (server) boils down to "accepting
its key" with a command on the master.

Now it can happen that after one minion is fully accepted, a second one
presents itself to the master with the same id but different key. In
that case, Salt will figure out that the key is different and reject the
second minion, assuming it is an impostor.

Due to Salt's caching mechanisms, I found out that under certain
circumstances Salt commands can reach, read data from and write data to,
both minions ("original" and "impostor"). That includes pillar data,
which is supposed to be secret to a certain minion.

- Reproducer

# run 1 salt-master machine [master]
# run 2 salt-minion machine [minion1, minion2]

## 1. start the salt-master
rcsalt-master start

## 2. on both minions give to the minion_id the same value, like
'minion-test'
vim /etc/salt/minion_id

## 3. start the salt-minion on the minion1
rcsalt-minion start

## 4. accept the key on the master
salt-key -a minion-test

## 5. try a simple test command from the master
salt 'minion-test' cmd.run 'cat /etc/machine-id'

## 6. delete the key from the master
salt-key -d minion-test

## 7. start the salt-minion on the minion2

## 8. accept the key on the master
salt-key -a minion-test

## 9. try a simple test command from the master
salt 'minion-test' cmd.run 'cat /etc/machine-id'

## 10. Here it is the bug: the minion1 is still accepted and responding.
We could run any command for the minion2, but the minion1 will listen,
execute and respond to them too, not only the accepted minion2.
## real output
/------------------------------------------------
suma3pg:~ # salt 'minion-test' cmd.run 'cat /etc/machine-id'
minion-test:
    52c69eb9c1da2a459375571a9b81e400
minion-test:
    a44f29fe2e8feb459fb021c259d5485f
------------------------------------------------/
## expected output
/------------------------------------------------
suma3pg:~ # salt 'minion-test' cmd.run 'cat /etc/machine-id'
minion-test:
    a44f29fe2e8feb459fb021c259d5485f
------------------------------------------------/

## 11. in the end it get solved on its own, but ONLY IF the salt-master
is restarted
rcsalt-master restart

- Reproducer Part2 for pillar_data

## set a custom pillar on the server, valid only for 'minion-test'
vim /usr/share/susemanager/pillar/top.sls
/------------------------
base:
 'minion-test':
   - data
------------------------/

mkdir /usr/share/susemanager/pillar/data
vim /usr/share/susemanager/pillar/data/init.sls
/------------------------
data:
  secret:
    - value: 123456
------------------------/

## refresh pillar
salt '*' saltutil.refresh_pillar

## redo steps as described above

## ask for pillar
salt '*' pillar.items data

## real output
/------------------------------------------------
suma3pg:~ # salt 'minion-test' pillar.items data
minion-test:
    data:
        secret:
              value:
                  123456
minion-test:
    data:
        secret:
              value:
                  123456
------------------------------------------------/
## expected output
/------------------------------------------------
suma3pg:~ # salt 'minion-test' pillar.items data
minion-test:
    data:
        secret:
              value:
                  123456
------------------------------------------------/

The result will be that private pillar_data are exposed to the old and
rejected minion1 too.

-------

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--MIdTMoZhcV1D07fI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYN/AUAAoJELwn3Z0sxP1mSrsQAKuzDE5eug5LTxcB7RxK8G9+
WgQsGf8di8lSqeRUGb6dNzA2M6ZMGfncgO8bute56FHmzEZDrAh7T7sFpkDXxlyA
qjK8kQ3pWTz33maqTHCFXtZVOso8Tlpv/B4acAC6m7KQwoCI0cIXdECHl3+Cu5VC
NTSKoXNfApzVZETpb6Ba6BS2YumgUI3Xc+BeJoCiCLfPiElzyE4KHRjfcF/tf+GX
R18x4mROhrDDigrmMviWvtOzDRLOY9rcRCLdN+QsAZtd55r5otiNx02et3muRjl8
ZequHLWseFT+QqRawCwHlGFwA+dZLu74ZYvnvZRS2brwPvUF5zxryjOxSaRnzkLG
DAoMaKEE3tsDcNRW0KD2yMZXJHuzlOzC2jAVHRDKfH4S21/xcBf3DWV7jvSb5far
c9H5t/d7bWllckcPEWoj7B0ShjOgIG9yWuXI/2j5vXTQmWHXg+6odLRBVNO/Fsd8
fp/LEmXryTWZ7/qf6+zGKaARFTvrvaTJwQC+LA979e85O4KNbI9dGpywmefcDK/N
h5BVqz2QsbaPHWHArdeehtZHwvFUDLFpbGgLF7R8bEsrhoWNy7/XVqp1Gzmx/J3g
n4kAyqPLmU72IVXxP5LyigSWi1goTeFarCMwZzLRzfgFJ4nWX/pwuLOIcloiOogS
YAn9rgU6tywbMsJlq8LV
=r7SD
-----END PGP SIGNATURE-----

--MIdTMoZhcV1D07fI--
