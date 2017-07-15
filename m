X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4894" "Friday" "14" "July" "2017" "19:27:53" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>" "125" "Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" "^Date:" nil nil "7" "2017071500:27:53" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" (number mark "        bperry.volat Jul 14  125/4894  " thread-indent "\"Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler\"\n") "<20170713154344.GG21662@suse.com>" ("<20170713154344.GG21662@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26418 invoked by uid 550); 15 Jul 2017 00:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26294 invoked from network); 15 Jul 2017 00:28:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=26qsu71V/O6gHqbLxqEbP47aBKpLfEomOQUnEi+T1z0=;
        b=ukL0miK0LWjFvM0SdfQNZr4MXyhDgihhfESMuZb13ZEPq/0Iynr/qUXcp1nm0+gG7+
         aeeFVwtp7qAIb6zRWUh67iut/rSNB04pZinuQVDO11UCrTNe/iTCy1gp1bX+ldeATR2y
         ub8iZl55TyEv2mcqNY2XNf55i3elnBIPzamMbldNcl2GV8L6qsAWsEW5UHK7MRLoFTPH
         nGAmOB7fMEg11kTt7RlgLFFMiMg3U3HXO2x+vZJxHTsCWU/xdq4nsLSf1F+UMHoG6+9J
         5am4yR/Mahf7iILiWurxkAjJQkNoFtWiEfqmElvNDe3qcWf1LVJt6NHJOKp5Up+qEeeX
         H3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=26qsu71V/O6gHqbLxqEbP47aBKpLfEomOQUnEi+T1z0=;
        b=Z4I/Ke1re6uFH3CSQ6D4YPeXQRhb3PNCYeYEvhGOBEiTHZDcZh5SfTx9c1OlGjOYDE
         VsEKFKyo0m+6uFevD1RUZpG0h3IZs59y9pIfYp1FTQovzJxeNbm4lior5eUvX9AgohX3
         x9OyHjKpD0pxGHyK5KKrGxFFxDyeAKkjOve/9jUvXo0r5TRNexMZ/G5/nZuQCOJwcIr0
         q6EvcXvnq2yC5Ojl+jG57naABfA+KneS8etkP0q34FHZhI0bQpKaYIAMvpXnlqmi8px4
         jixxbCIu6hnEfRznw6Q/30QE+/zG2PQAuRpXgJVocNri5zssW2rP8WOjNbXsqF+z1LWq
         ODTg==
X-Gm-Message-State: AIVw11008U33cBlzNFCu0llUy7mDKFN5bHD+p4VWklUtQXvF1dONOpVs
	CinXfS/QTgXanKfyMP8=
X-Received: by 10.202.87.130 with SMTP id l124mr6678837oib.180.1500078482448;
        Fri, 14 Jul 2017 17:28:02 -0700 (PDT)
Content-Type: multipart/signed;
 boundary="Apple-Mail=_41FE181A-CCAD-4E8F-A078-A2F061F97573";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
References: <20170713154344.GG21662@suse.com>
In-Reply-To: <20170713154344.GG21662@suse.com>
Message-Id: <C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>
X-Mailer: Apple Mail (2.3273)
Date: Fri, 14 Jul 2017 19:27:53 -0500
From: Brandon Perry <bperry.volatile@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-1000083: evince: Command injection
 vulnerability in CBT handler
To: oss-security@lists.openwall.com

--Apple-Mail=_41FE181A-CCAD-4E8F-A078-A2F061F97573
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 13, 2017, at 10:43 AM, Johannes Segitz <jsegitz@suse.de> wrote:
>=20
> Hello,
>=20
> we were asked to bring this to distros and per list policy it is now made
> public on this list.
>=20
> From: Felix Wilhelm
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> The comic book backend in evince 3.24.0 is vulnerable to a command
> injection bug that can be used to execute arbitrary commands when a cbt
> file is opened:
>=20
> cbt files are simple tar archives containing images. When a cbt file is
> processed, evince calls
> "tar -xOf $archive $filename" for every image file in the archive:
>=20
> // backend/comics/comics-document.c: 914
>        command_line =3D g_strdup_printf ("%s %s %s",
>                                        comics_document->extract_command,
>                                        quoted_archive,
>                                        quoted_filename);
>=20
> While both the archive name and the filename are quoted to not be
> interpreted by the shell,
> the filename is completely attacker controlled an can start with "--"
> which leads to tar interpreting it
> as a command line flag.
>=20
> This can be exploited by creating a tar archive with an embedded file
> named something
> like this: "--checkpoint-action=3Dexec=3Dbash -c 'touch ~/covfefe.evince;=
'.jpg"
>=20
> (Make sure evince is not sandboxed by apparmor before trying to reproduce
> the attached POC)

Not sure if the list ate the attachment, but I don=E2=80=99t see it availab=
le. Perhaps a link to it somewhere else would be of use?

>=20
> fwilhelm@box $ tar -tf poc.cbt
> --checkpoint-action=3Dexec=3Dbash -c 'touch ~/covfefe.evince;'.jpg
> fwilhelm@box $ ls -la ~/covfefe.evince
> ls: cannot access covfefe.evince: No such file or directory
> fwilhelm@box $ evince poc.cbt
> fwilhelm@box $ ls -la ~/covfefe.evince
> -rw-r----- 1 fwilhelm eng 0 Jun 28 11:05 /home/fwilhelm/covfefe.evince
>=20
> An easy way to fix this would be to change the  ComicBookDecompressCommand
> entry for tar to
> {"%s -xOf --"          , "%s -tf -- %s"      , NULL             , FALSE,
> NO_OFFSET}
>=20
> Please credit Felix Wilhelm from the Google Security Team in all releases,
> patches and advisories related to this issue.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> Additional information by Michael Catanzaro:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> It looks like the affected code was deleted right after the Evince 3.24.0
> release, so master is not vulnerable. But current releases are. I'll ask
> around to see how we want to handle this.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> and
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> Since it looks like this can probably be used to take over a user account
> with no user interaction beyond visiting a malicious webpage (via drive-by
> web browser download -> nautilus thumbnailer) I guess we should probably =
do
> a coordinated disclosure instead of just dropping new releases with no
> warning.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> This is tracked as CVE-2017-1000083, further information can be found at
> https://bugzilla.gnome.org/show_bug.cgi?id=3D784630
>=20
> Johannes
> --
> GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
> Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
> SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton
> HRB 21284 (AG N=C3=BCrnberg)


--Apple-Mail=_41FE181A-CCAD-4E8F-A078-A2F061F97573
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZaWGQAAoJEKJq8VjVbt2pgC8QAKWn+Q7lFujWj6VgKnSuaBof
WvKlkBjSPGQ3YHwBv50AybZVlAV9gutXys6DKeCdo9AORbtkoYXFA7eSBNWWgPj9
mFF1fToa6z3G8ywXJeNqtGtDQVcdEnH7Z8fMjRJel71jKPQbrQUvy8xY27YhGE+V
v70pRzNPnG6m1DHt+qZWwVEALQQpT80Y6K97k2BPLadH4dQleyn2lMsJiA3qy3xJ
ecEzgQh2Zt9J/jVctHv3+2vFRsn9Ucn/U10k3dyzHNsyN4SvtaBwRVRPQUVU41PZ
o5uVj2461AcyZUEi4bH289eaGP/LZSXnwcTOBw67m2YZijksv/TbVW0i6/fQLUQ6
hWBneOt/zqUERF2/icnYoV8JnmL5b7Ac98WDPV/+EKZ0Rq+s4tJDZ2+ehoe1CO4Y
qpaJt+2CtkIVNVoEa89p9ii/i8zs2CORjqp555txCoBW6MXWdjPc/6+s7FbuTqiC
WcHrnveIvX9rHYTCS/q2jUVIOT+GbP+5Lq7oXWQFeBWUD+w4QE/MWddSoZkHg+dm
9jyXKE4xWitU8cT7HrbZiCJG1jgUEpF3jDeqG0FbbUeebBG3MtoixTk1K9rgWNNv
4WfScbUGyF4iVulJ2H1P3uPY0UlIb5Z+7ilooSyi1kAeNrOaJf5zi3TSt8Yp1Cmu
/dCgirpmzfk0J6VQN9nK
=psbF
-----END PGP SIGNATURE-----

--Apple-Mail=_41FE181A-CCAD-4E8F-A078-A2F061F97573--
