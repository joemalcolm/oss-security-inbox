X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3191" "Tuesday" "26" "May" "2015" "08:53:43" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<556488F7.9030708@redhat.com>" "86" "[oss-security] FreeRDP tmp flaws" nil nil nil "5" "2015052614:53:43" "[oss-security] FreeRDP tmp flaws" (number mark "        kseifried@re May 26   86/3191  " thread-indent "\"[oss-security] FreeRDP tmp flaws\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23554 invoked by uid 550); 26 May 2015 14:53:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22473 invoked from network); 26 May 2015 14:53:56 -0000
Message-ID: <556488F7.9030708@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="vUgBqwK2kb14asvnHvBIWLQO7Lg8DJk2C"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 26 May 2015 08:53:43 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] FreeRDP tmp flaws
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        Assign a CVE Identifier <cve-assign@mitre.org>

--vUgBqwK2kb14asvnHvBIWLQO7Lg8DJk2C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

This may need 2 CVE's because different versions are affected.

Upstream has no security address I can find, filing a GitHUB issue (what
their wiki says to do) which is public so also posting here.

This is in the RHEL 7 version and upstream:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
./channels/drdynvc/tsmf/tsmf_media.c:			snprintf(buf, sizeof(buf),
"/tmp/FreeRDP_Frame_%d.ppm", frame_id);
                /* Dump a .ppm image for every 30 frames. Assuming the
frame is in YUV format, we
                   extract the Y values to create a grayscale image. */
                static int frame_id =3D 0;
                char buf[100];
                FILE * fp;
                if ((frame_id % 30) =3D=3D 0)
                {
                        snprintf(buf, sizeof(buf),
"/tmp/FreeRDP_Frame_%d.ppm", frame_id);
                        fp =3D fopen(buf, "wb");
                        fwrite("P5\n", 1, 3, fp);
                        snprintf(buf, sizeof(buf), "%d %d\n",
sample->stream->width, sample->stream->height);
                        fwrite(buf, 1, strlen(buf), fp);
                        fwrite("255\n", 1, 4, fp);
                        fwrite(sample->data, 1, sample->stream->width *
sample->stream->height, fp);
                        fflush(fp);
                        fclose(fp);
                }
                frame_id++;
#endif
        }
}

This is in the RHEL 7 version, not in upstream currently:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
./libfreerdp-gdi/gdi.c:			sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",
tilenum++);

int tilenum =3D 0;


#ifdef DUMP_REMOTEFX_TILES
                        sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",
tilenum++);
                        freerdp_bitmap_write(tile_bitmap,
gdi->tile->bitmap->data, 64, 64, 32);
#endif



--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--vUgBqwK2kb14asvnHvBIWLQO7Lg8DJk2C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVZIj3AAoJEBYNRVNeJnmT06EQANUNkOnsamc/X5E30St756XX
4C4nmpgRNHq3TMozer9LpySlQKDxiNaxLekHuymsy+f/yTH9lpaAI0Y9csd4JfC5
GAeV+xyq+OoCfJXgRZUMz68GO3yZ4Si35EXvVZmf5TTYSK5mSSZdgVwgixvY7UcG
49HXGQOkOmdsvqeNLKOI9yTtijMoH1OgDo4QW5bsa7gDvH9udtF6l9MirCFhENAR
gO9pDILHVOGHYm35JejSjx/wrFLfVGzJZpeFTFXfMUqiAPMdsV927EWzm1K9g+lN
6Fz93xbkaUzn47WpVuT0jg2hTPjtCBucf/ZsKp6TxLtRxrlDlFdjBZl9UalZ2kfo
BazeZxggGUYWVtuiVaOBCkrU/sSUVBfoo2QqxSKjzr3iin59yviB4ras3rVl1Ex8
/tjHDScSjW43pZSWaJ5RnoeSPZ3FYd+Mq5Vs/60IFgDJAIrik3tyYwvAXJlINqQI
Kzq0DPZEHT3A7py3gtRWzfzfkyvm5eZn0Me1pkay4igV/Ai4tWkXQd59MmX65gDN
OX0kmnbwgvz9GsipHqIqWddypDTMMbXQ1bBQcxhzOO2N63VksnuC7AiCUWLW1ecM
ROvdb3WOrb1sQrqEbpAxJLm/WKlDiV7cqmt7Z0u6vQCvgkg0b55xUVTms6/DlgsF
pM0465zUlmK5f1A6HHwG
=ySbE
-----END PGP SIGNATURE-----

--vUgBqwK2kb14asvnHvBIWLQO7Lg8DJk2C--
