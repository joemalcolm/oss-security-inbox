X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Thursday" "28" "September" "2017" "12:06:51" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-ELKaUKMBBvYHN5rC5WYM7Z0qVHhsWL6zbqAXUpVcThoZA@mail.gmail.com>" "46" "[oss-security] OpenVPN CVE-2017-12166: remote buffer overflow" nil nil nil "9" "2017092810:06:51" "[oss-security] OpenVPN CVE-2017-12166: remote buffer overflow" (number mark "U       guidovranken Sep 28   46/1255  " thread-indent "\"[oss-security] OpenVPN CVE-2017-12166: remote buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22490 invoked by uid 550); 28 Sep 2017 10:13:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18424 invoked from network); 28 Sep 2017 10:07:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ulKvAsfZPJfya0RUQaOLeRZUGK28NmkEgsAquGHK/Rk=;
        b=Cqk2pdNJJd1VheiJ0+2JlERhh6lPco/L6Kysb3QUKX+3fzA+MEzz/J9l7M17BOUKYo
         6ZZ2xMBxAbChHEkyoc2MLHLrsXu7szdfdWGtngBFED2jqVfWNETpkTItqdQXEovxtBDx
         /btFMYWPUZI0BGcQFVjIAfjYfod4yeeAhgwvaLXEi0Otq5BAW4bZM9LON3dHqqwj6Pp1
         QSCIbeop5fhhbX5hYTFXKmiP3BQQWj8j2bGy8JInuRtF8kZGKY7YhU1aPDLxiqiXus92
         PiW0JfczjnsEdJG5gEXfCiEbY7buQC6N/wf8dP5NH/o0cbdZ6cbW3kWPezapuaD2AqwH
         yvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ulKvAsfZPJfya0RUQaOLeRZUGK28NmkEgsAquGHK/Rk=;
        b=jAx3xeqWoXMKeIt8gDmsohFAMn1JSTidFM1pJKNtdGbq0cRTrSFCJYHvepFdww3bTu
         5J/w0J1EHqY5VGgOWCTOaDWWVQZOZmMNcPgkSOdKcnAq49otEvYC9fIbdHQlauzo/t1r
         2ly4ejWueCdPg5MBY61kawA1cVeYFx+lXpxvUguosuKcDse5MGeTEI/+2vqwFs9Qpfhh
         c5/48MG/WuhGCqmur64MVV89YFjqiqheLpkdmCewV9ToUqSiZJ7UXP8WWCqT5uDLVuK9
         3GKiB7/+C0B3aHZGfJ1+SOUPFZ80h89y5b4B/SQ8ykNQ5LjZvpuZ2h1VLBkXWAWx9G5m
         pcBQ==
X-Gm-Message-State: AHPjjUhgl7kVGzV7NiF/gU+2TecvqkBpjexjHCMcHpvcXqZYLfM+9ZUf
	vsVv1ExpgWc3mKVSE2PkHVQ5UAS9zDoRmeLMSXDsYc4B
X-Google-Smtp-Source: AOwi7QCPVEoGfCDhPQJqRQ9WcWHY8pZHKFnEfpzVTKBk/XsUpxgmTHF2a9SArWp6XfA9A7zNtvCoVJIv0OJMnEq1Mlo=
X-Received: by 10.98.159.76 with SMTP id g73mr3823680pfe.293.1506593212294;
 Thu, 28 Sep 2017 03:06:52 -0700 (PDT)
MIME-Version: 1.0
From: Guido Vranken <guidovranken@gmail.com>
Date: Thu, 28 Sep 2017 12:06:51 +0200
Message-ID: <CAO5O-ELKaUKMBBvYHN5rC5WYM7Z0qVHhsWL6zbqAXUpVcThoZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] OpenVPN CVE-2017-12166: remote buffer overflow

This concerns a remote buffer overflow vulnerability in OpenVPN. It
has been fixed in OpenVPN 2.4.4 and 2.3.18, released on 26 Sept 2017.
It is suspected that only a small number of users is vulnerable to
this issue, because it requires having explicitly enabled the outdated
=E2=80=98key method 1=E2=80=99.

The OpenVPN advisory can be found here:
https://community.openvpn.net/openvpn/wiki/CVE-2017-12166

In ssl.c, key_method_1_read() calls read_key() which doesn=E2=80=99t perform
adequate bounds checks. cipher_length and hmac_length are specified by
the
peer:

1643 uint8_t cipher_length;
1644 uint8_t hmac_length;
1645
1646 CLEAR(*key);
1647 if (!buf_read(buf, &cipher_length, 1))
1648 {
1649     goto read_err;
1650 }
1651 if (!buf_read(buf, &hmac_length, 1))
1652 {
1653     goto read_err;
1654 }

And this many bytes of data are then read into key->cipher and key->hmac:

1656 if (!buf_read(buf, key->cipher, cipher_length))
1657 {
1658     goto read_err;
1659 }
1660 if (!buf_read(buf, key->hmac, hmac_length))
1661 {
1662     goto read_err;
1663 }

In other words, it=E2=80=99s a classic example of bounds check resulting in=
 a
buffer overflow.

Like my previous set of OpenVPN vulnerabilities, this issue was also
found with fuzzing.

Guido
