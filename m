X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3502" "Tuesday" "26" "May" "2015" "09:41:45" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55649439.8030206@redhat.com>" "92" "Re: [oss-security] FreeRDP tmp flaws" nil nil nil "5" "2015052615:41:45" "[oss-security] FreeRDP tmp flaws" (number mark "        kseifried@re May 26   92/3502  " thread-indent "\"Re: [oss-security] FreeRDP tmp flaws\"\n") "<556488F7.9030708@redhat.com>" ("<556488F7.9030708@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24474 invoked by uid 550); 26 May 2015 15:42:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24456 invoked from network); 26 May 2015 15:41:59 -0000
Message-ID: <55649439.8030206@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <556488F7.9030708@redhat.com>
In-Reply-To: <556488F7.9030708@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="MVMnl8DF3RjXa1gveMWGxgrF3djbPvp8s"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 26 May 2015 09:41:45 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] FreeRDP tmp flaws
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        Assign a CVE Identifier <cve-assign@mitre.org>

--MVMnl8DF3RjXa1gveMWGxgrF3djbPvp8s
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Actually it looks like upstream fixed both of them already so one CVE
can do (I don't think it's important enough to SPLIT/MERGE properly).

On 05/26/2015 08:53 AM, Kurt Seifried wrote:
> This may need 2 CVE's because different versions are affected.
>=20
> Upstream has no security address I can find, filing a GitHUB issue (what
> their wiki says to do) which is public so also posting here.
>=20
> This is in the RHEL 7 version and upstream:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> ./channels/drdynvc/tsmf/tsmf_media.c:			snprintf(buf, sizeof(buf),
> "/tmp/FreeRDP_Frame_%d.ppm", frame_id);
>                 /* Dump a .ppm image for every 30 frames. Assuming the
> frame is in YUV format, we
>                    extract the Y values to create a grayscale image. */
>                 static int frame_id =3D 0;
>                 char buf[100];
>                 FILE * fp;
>                 if ((frame_id % 30) =3D=3D 0)
>                 {
>                         snprintf(buf, sizeof(buf),
> "/tmp/FreeRDP_Frame_%d.ppm", frame_id);
>                         fp =3D fopen(buf, "wb");
>                         fwrite("P5\n", 1, 3, fp);
>                         snprintf(buf, sizeof(buf), "%d %d\n",
> sample->stream->width, sample->stream->height);
>                         fwrite(buf, 1, strlen(buf), fp);
>                         fwrite("255\n", 1, 4, fp);
>                         fwrite(sample->data, 1, sample->stream->width *
> sample->stream->height, fp);
>                         fflush(fp);
>                         fclose(fp);
>                 }
>                 frame_id++;
> #endif
>         }
> }
>=20
> This is in the RHEL 7 version, not in upstream currently:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> ./libfreerdp-gdi/gdi.c:			sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",
> tilenum++);
>=20
> int tilenum =3D 0;
>=20
>=20
> #ifdef DUMP_REMOTEFX_TILES
>                         sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",
> tilenum++);
>                         freerdp_bitmap_write(tile_bitmap,
> gdi->tile->bitmap->data, 64, 64, 32);
> #endif
>=20
>=20
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--MVMnl8DF3RjXa1gveMWGxgrF3djbPvp8s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVZJQ5AAoJEBYNRVNeJnmTV40P/3NXq3lTBUZmnLn+TC231lsg
wGkwkrmKuvloXQsmg1uOIu4tqjZyMOUPn/tzCRpsynNn/BviOOVVjqCy35BhFpNC
O4WGKThg5HnBDDkhV2+uAUn2aQPDj8AKw9XQ/oljAIVtRiZxSzTyV+S4JORWDmeE
srqdjWqhn3+16nf2IjWrw0Nb1rxpd5Dc5smoHSo5d4+leapwUEsp7/I23MWnIt7U
GaRebyJU7c1xdWIXNxzMisWOQlAC/oC2TEn32+HiC2daIuX3lpA/AZ10qHFftVmR
juMoZ59T4BHtXcuHNp4S2zWK5lgl+FhNUpqjHuA1ksBVTy3ibTI/fvnoIkoIXsJm
1eTQnYc/VkX2TFy80DM/Jw3eA8NrmFTOqR9XGG4oTtzIQiud6Ygp7+jc2ocaMh1i
MfFE5JQvzIkO7D4RBjVpT8aq57cLkEysEOru/goPudA5n2PmgHohoOt6hMQqUunT
oQs0F8fyTobxWiotiCOb35TfSG3apCnH4Ju64oReBW1JVbp8R8iXfQD79F8T8xOh
Tko9SuY5s5jEQQCpB3s/DC7AxW+rgf97N9kZQsNPs014b75L9Ut14S1L4pPiwZNc
9vT7/XJHarzQZratCoe35xYjqQKY53SH2jrFd8E9f9eH+61fuMuSUsCah/GXXlaC
D27BPTjvbQeuRwD7lbaR
=A5Tj
-----END PGP SIGNATURE-----

--MVMnl8DF3RjXa1gveMWGxgrF3djbPvp8s--
