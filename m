Received: (qmail 22010 invoked by uid 550); 28 May 2026 20:56:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14308 invoked from network); 28 May 2026 17:05:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779987917; x=1780592717; darn=lists.openwall.com;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8oYDPBA10PQ4yZDhZ1iL4qWZf0xfKEtcPktpH7QY9fk=;
        b=eaf3rncZhzly1idWsbDyf5Go5td7X19I3vDVboB4mvn56sfIkbINV0bsPGoz0jClT9
         lrSzXTy62I7u69m2dUoqh1OQ4RCJ2+u2zfRnAuS+Q8z6wxEc3OeJR/Napfi+muO/jX9Z
         kCBZqHoDYhW8uChxhgYaVsRWWTNHeFUBn/OvGCgvt48xGF59qWyjn/cjFMKoSRMhEhUe
         6rmYvZKsXLbped+LlBIAYnW5VdFoGrVHiRMXIbwVtVs5tLaLguC/Vegi7pKNdQX2Lswn
         l5N38MC0AAQTbYAUajMcVhODisJgOX9wfBcssF3M1HVV2hPTnhSADZsAoePPziaVwlLD
         sKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779987917; x=1780592717;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8oYDPBA10PQ4yZDhZ1iL4qWZf0xfKEtcPktpH7QY9fk=;
        b=Vs6iFJhiEdlMkxIb55gdRLOzHVJFXyfxJuAmGi/bnkOb8nU+NsI1x7Lzaf110tvpIg
         /OEJKm5KCzKk2iBvrcHu4DpJtTG7Q4Go0qD8ui1erBOBsY8rhn6H7E9tNT24v4Sga833
         8EGJzpp1eLmT1KQOad+w0BVir8MDasZmlriwco4qtyvEhvjkuMlx/5Cy+XmD8hJd24LF
         OtJ4b0ITuyWkM77WzyXWNyqeFHMKglduLd6tInaBXH+3imflsMw+85Eb4ZHP2aR4V1/S
         cS/qbIZ5GsKLwo/5xTxCBv8oFyR05sdAeYz7BBt5Nbo6jEFyF+rg7Op/kWuY+H/E/wNx
         KN4A==
X-Gm-Message-State: AOJu0YxiSecorAs76qf63L6ARmgt0oDLEH8p9s4oWRTP5JgZBVUUezVn
	6hK2n81vq2ifd+JFkOPOiH9JRmXKJiQNI+eOTN5Etkgf+n4aUsJPhLowgU6a9A==
X-Gm-Gg: Acq92OECzRwRPKVA/4tyEHycdkM7jYViuO05fybyvex2qZEy/K0E4zEQCwrR840yFuW
	HD7FpXQN2IeI+B4DQUmm5EDPzdiOOXqaF/n1BrZwseLYMqJIdHyrdP0S3uttgXLHy+BD+zkn+af
	wLltpM8Ufzv9wWcLH/DLikEmtx4pQdh8Yscn67c6dimI12bttNVDD72ts47F8mDHiYHAB/fM6KO
	xmGoOoNqRVuIk2K2zV+Flx23hx7Ox5hRFgJhXs/lTWbtXsHLr9P2wcMS2gBxJBuxCCMAOq2En7O
	PGICY76Y23M14qza/VT4hZxb1doWvf+jCbssD/lVd26dKtFY7hBpk24/uFay3lrYNTVqISE4ozJ
	yN9MWkL1UL1FBW++6VBBSV0sSFwgfbuJl6mV70T/QFhy6PzUU1smyvPPx2jOljXowfpd8XRNaxS
	mNdlTF15COSS6SyhEtD+Rw6jz3Fu+4KLQpYzewi2IM9hVtrMlZskQzZVvX8o2T1r1PrwGCum5V4
	W8vWZi2zdHRl4JfhExLVqniwprK0dJYZP8dI02BEw==
X-Received: by 2002:a05:620a:1b9b:b0:913:7bc8:79ac with SMTP id af79cd13be357-914b48cf753mr4247063085a.26.1779987916947;
        Thu, 28 May 2026 10:05:16 -0700 (PDT)
From: Geoffrey Hutchison <geoff.hutchison@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Message-Id: <2E3BDDD2-01C1-4207-8662-FDA0E2674B1A@gmail.com>
Date: Thu, 28 May 2026 13:05:05 -0400
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3864.600.51.1.1)
Subject: [oss-security] Open Babel 3.2.0: 24 CVEs fixed across file-format parsers


Open Babel 3.2.0 was tagged on 2026-05-26 and ships fixes for 24
publicly-assigned CVEs in the chemistry file-format parsers, plus a
larger pool of OSS-Fuzz-discovered memory-safety bugs that were not
individually assigned CVE IDs. All issues are reachable through the
public OBConversion::ReadFile / WriteFile API, the `obabel` CLI, or
the language bindings, so downstream distributions parsing untrusted
chemistry files should plan to update or backport.

Project:   Open Babel (https://openbabel.org/)
Affected:  all releases <=3D 3.1.1
Fixed in:  3.2.0 (https://github.com/openbabel/openbabel/releases/tag/openb=
abel-3-2-0)
Advisory:  https://github.com/openbabel/openbabel/blob/master/SECURITY.md

=3D=3D CVE-2026 batch (reported by Vedant Madane; PR #2862) =3D=3D

  CVE-2026-2704  CIF transform3d::DescribeAsString  out-of-bounds read
  CVE-2026-2705  MOL2 OBAtom::SetFormalCharge       NULL dereference
  CVE-2026-3408  CDXML OBAtom::GetExplicitValence   NULL dereference

=3D=3D CVE-2025 batch (reported via OSS-Fuzz; PR #2913) =3D=3D

  CVE-2025-10994 GAMESSOutputFormat::ReadMolecule       use-after-free
  CVE-2025-10995 zipstream basic_unzip_streambuf        overlapping memcpy
  CVE-2025-10996 OBSmilesParser::ParseSmiles            heap-buffer-overflow
  CVE-2025-10997 ChemKinFormat::CheckSpecies            heap-buffer-overflow
  CVE-2025-10998 ChemKinFormat::ReadReactionQualifier   NULL dereference
  CVE-2025-10999 CacaoFormat::SetHilderbrandt           NULL dereference
  CVE-2025-11000 PQS lowerit                            out-of-bounds read

=3D=3D CVE-2022 batch (reported by Cisco TALOS; PRs #2883-#2887) =3D=3D

  CVE-2022-37331 Gaussian coords_type orientation       OOB write
  CVE-2022-41793 CSR PadString title                    OOB write
  CVE-2022-42885 GRO res                                uninitialized point=
er
  CVE-2022-43467 PQS coord_file                         OOB write
  CVE-2022-43607 MOL2 attribute/value                   OOB write
  CVE-2022-44451 MSI atom                               uninitialized point=
er
  CVE-2022-46280 PQS pFormat                            uninitialized point=
er
  CVE-2022-46289 ORCA nAtoms                            OOB write
  CVE-2022-46290 ORCA nAtoms                            OOB write
  CVE-2022-46291 Gaussian translationVectors[]          OOB write
  CVE-2022-46292 MOPAC translationVectors[] (UNIT CELL) OOB write
  CVE-2022-46293 MOPAC translationVectors[] (FINAL PT)  OOB write
  CVE-2022-46294 MOPAC IN translationVectors[] (Tv)     OOB write
  CVE-2022-46295 MSI translationVectors[]               OOB write

The full per-CVE table with patch commits is in SECURITY.md on the
release branch:

  https://github.com/openbabel/openbabel/blob/openbabel-3-2-0/SECURITY.md

Reproducers for each CVE are checked in under
test/files/fuzz_regress/ and run on every CI build through the
fuzzregresstest harness, with an ASAN+UBSAN job to catch regressions.

=3D=3D Additional hardening (no individual CVE IDs) =3D=3D

3.2.0 also lands a large set of OSS-Fuzz / Trail of Bits / ADA Logics
(Claude Mythos) fixes across MCDL, ChemDraw CDX, ChemKin, abinit, CACAO,=20
Gaussian (including z-matrix and cube), Molpro, POV-Ray, Tinker, SMARTS,
MDL V3000, SDF, CIF, and the SMILES canonicalizer. Hardening highlights:

  - FindRings recursion converted to an iterative loop (stack smash)
  - Atom-count bounds, bond-loop bounds, charge bounds (+/-999)
  - SMARTS recursive '((' depth capped at 1000
  - MCDL heavy-atom cap at 200
  - Reject element numbers > 118
  - std::unique_ptr adoption to close leaks / UAFs

A 5-second timeout was also added to canonical-label generation to
prevent hangs on pathological inputs.

=3D=3D Mitigation =3D=3D

Upgrade to Open Babel 3.2.0. Source tarball, signed git tag, and
Python wheels (Linux x86_64/aarch64, macOS, Windows) are available
from the release page above. The fixes apply cleanly against 3.1.1
for distros wishing to backport; per-file PR references are in
SECURITY.md.

=3D=3D Credits =3D=3D

  - Cisco TALOS (2022 batch)
  - Vedant Madane (2026 batch)
  - OSS-Fuzz, Trail of Bits, ADA Logics (Arthur Chan),
    Claude Mythos / Claude Security (ongoing fuzzing reports)
  - David Korczynski (#2874), tyler92 (#2737), catenacyber (#2342)
    for the fuzz-harness infrastructure

Thanks to all the reporters and the fuzzing infrastructure teams.

--
Geoff Hutchison
Open Babel maintainer
oss-security@lists.openwall.com=
