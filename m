X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Wednesday" "15" "April" "2015" "15:47:36" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pgvJEy056DEoeThaJxrg06eugxj10ar4jkiZwixwhMwQw@mail.gmail.com>" "18" "[oss-security] double-free in gnutls (CRL distribution points parsing)" nil nil nil "4" "2015041513:47:36" "[oss-security] double-free in gnutls (CRL distribution points parsing)" (number mark "        robert@swiec Apr 15   18/596   " thread-indent "\"[oss-security] double-free in gnutls (CRL distribution points parsing)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8122 invoked by uid 550); 15 Apr 2015 13:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8089 invoked from network); 15 Apr 2015 13:47:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=B8FGDpjuIgmEYnSUWsTQ1ZMGd/BVbfDvU7R4AK4hQRw=;
        b=X4GHyCSWbmIh5L2s61hOSX+dTrWVQHYDBN3FwBzdtIl9Ugf2klkJNeIYBAXeSafPPA
         RHSGqpdNHieRdo8qWOA24Se37AS4mXE3pNHekjcwqdHFY8bcY0IBAvK4d+s5qweKE0YQ
         1BwLpaebXdSWpXtD1o9KvyfPEqn6lAPHZWh1IWz0UfPMLMObdrzTTQq8vM5XEUBGO0nF
         BtWCocfdH1clX3nharcH7EIR772PixM7O2+u2hloHwVyV5hymffP4ouFBPz1U1jcLc8s
         dHzdDK8yHqQnT1IJt9dZ7HoTmAg205TwHceq9H8OfXdqgO0z1vtRVDt93L9eKq7VlCNv
         z1xw==
X-Gm-Message-State: ALoCoQkOQFFSgbZ7rZtUHwsACsE2Sfwz0aRwii+NpuJJXmi+CEQ5ENZhF6AChSkW4AOJa8ks5UX3
MIME-Version: 1.0
X-Received: by 10.181.9.98 with SMTP id dr2mr41844190wid.62.1429105656638;
 Wed, 15 Apr 2015 06:47:36 -0700 (PDT)
Message-ID: <CAP145pgvJEy056DEoeThaJxrg06eugxj10ar4jkiZwixwhMwQw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2015 15:47:36 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] double-free in gnutls (CRL distribution points parsing)
To: oss-security@lists.openwall.com

gnutls 3.3.14 fixes a double-free in parsing CRL distribution points.

It will affect applications which parse CRL distribution points or
print contents of certificates with gnutls-provided functions (e.g.
gnutls_x509_crt_print())

Usually a DoS under modern mem allocators, but creating something more
interesting using double-free exploitation techniques is not out of
the question

changelists:
https://gitlab.com/gnutls/gnutls/commit/d6972be33264ecc49a86cd0958209cd7363=
af1e9
https://gitlab.com/gnutls/gnutls/commit/053ae65403216acdb0a4e78b25ad66ee9f4=
44f02

--=20
Robert =C5=9Awi=C4=99cki
