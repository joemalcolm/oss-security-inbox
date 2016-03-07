X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["865" "Monday" "7" "March" "2016" "13:04:50" "+0100" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speirofr@gmail.com" "<CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>" "28" "[oss-security] CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" "^Date:" nil nil "3" "2016030712:04:50" "[oss-security] CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" (number mark "U       speirofr@gma Mar  7   28/865   " thread-indent "\"[oss-security] CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13412 invoked by uid 550); 7 Mar 2016 12:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13391 invoked from network); 7 Mar 2016 12:05:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=8MDr7aBTlQVoAl93ewrx377wfJ5KpL3v6JTV1frM24c=;
        b=hrRvtoF6BeYHmWAMX7oWuu5F4Eo71gClVHyaDBoE1qWoKMZLTRr+lUckCdnACmtt3A
         fx+KG3rR+/e9+gizsUYzhws2CRUoAVfga8UsJ8nikCvDDFvaEe8tpqns5UkefvKyM6v2
         tfUiL6LmALGf9ADbB/+v47YkrL6MpmYDjwTfXdaspTMo01fP7zkxRs2W0EiTSggvuQgQ
         E9YQOawWvlyRqAnk7ANaPrSMSJuXLx2NJ3mD/51eirIb1DBbuL1q3meyGRu7jzxa6RRD
         /uzgHmccYGxb55aVDF/jLkCL9R3qss0BpSZffo77jSFEJn+EM/Y4sWOmIdmGAc3UDuhE
         nCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=8MDr7aBTlQVoAl93ewrx377wfJ5KpL3v6JTV1frM24c=;
        b=a00G0O5pxf/eQlxz4DAfEb1BPtmnwy4/GRybabc6jQvEk6DUJVNWcMEdx6O06co27D
         DMtiwE1uBGtjzWi+4Kab9PrAVRMOlV1QiM1HFNWkuHbGmziDNVb2QqjawNHodfVE21BJ
         DXfefsgNzRttDJLF75Pz/56z1tboJEkqRSWXRbvYanhILKDepeL8G5iTvdNG4AXpotMW
         ETRR2pWF7NxDN2fg51T8UGis8cCUtlv1pz2cWi2mb2QrzW5Vl4gFHojvemXDFSAQ5ZGf
         MFLodnISpjY7OloMpmodTWfA7w7IIfracowswzkZ/lcRdNmvI1hA29h2X51mjdg6+5Fz
         qIUA==
X-Gm-Message-State: AD7BkJIzW+GpLU18nty0XILd8b++tls6l1p/ixIRerEEYxzNJIPI6rwgNhRkhoWCuU4JZZw9yLTBx22oyWbu4g==
X-Received: by 10.194.242.202 with SMTP id ws10mr22345426wjc.3.1457352309896;
 Mon, 07 Mar 2016 04:05:09 -0800 (PST)
MIME-Version: 1.0
X-Google-Sender-Auth: 6XzDTjFj0VLJ5Q9poasRYcZOOGw
Message-ID: <CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e01419b02be7c04052d7446ab
Date: Mon, 7 Mar 2016 13:04:50 +0100
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speirofr@gmail.com>
Reply-To: oss-security@lists.openwall.com
Sender: saoret.one@gmail.com
Subject: [oss-security] CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an
 improper validation of array index weakness
To: oss-security@lists.openwall.com

--089e01419b02be7c04052d7446ab
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

A vulnerability in the minissdpd daemon has been found that affects
minissdpd version 1.2.20130907-3 available in Debian and Ubuntu.
The vulnerability can be exploited by a local unprivileged user
with write access to /var/run/minissdpd.sock to crash the minissdpd
daemon that runs with superuser privileges.

More details at:
https://speirofr.appspot.com/files/advisory/SPADV-2016-02.md
https://bugs.debian.org/cgi-bin/pkgreport.cgi?pkg=3Dminissdpd;dist=3Dunstab=
le.

Is there a CVE for this? If not, could one be assigned, please?

Regards,
Salva Peir=C3=B3

--
Salva Peir=C3=B3 @ https://speirofr.appspot.com
CS Researcher & Software Engineer
Universitat Polit=C3=A8cnica de Val=C3=A8ncia, Spain.

--089e01419b02be7c04052d7446ab--
