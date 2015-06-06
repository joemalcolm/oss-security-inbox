X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["830" "Friday" "5" "June" "2015" "17:58:14" "-0700" "Phill MV" "phillmv@state.io" "<CAMyKfL1EXnYhyaDrg6q2jQaFMd-u4roh2a8MhYJ9Fr7+KSHnuw@mail.gmail.com>" "26" "[oss-security] CVE Request: bson-ruby DoS and possible injection" nil nil nil "6" "2015060600:58:14" "[oss-security] CVE Request: bson-ruby DoS and possible injection" (number mark "        phillmv@stat Jun  5   26/830   " thread-indent "\"[oss-security] CVE Request: bson-ruby DoS and possible injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28393 invoked by uid 550); 6 Jun 2015 01:00:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28035 invoked from network); 6 Jun 2015 00:58:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=h26f/O6H6g2svN4ZnTnkbm0imqdijhvYrAc5VPtK8K0=;
        b=fIvu/XqKh3KQQzBr0EM2odchRfm7GTuRxjijj5TWZgeF07uhyhv57LQxuyTSXPqvqi
         cKNgkQH3gTxi+SunZ8hiY+G30PFhFkxvQIc6NG6u0v3Vgk4pYjcg+C227uuaiRun+OM0
         OiwB2sOBB6syHUbB0G5WhiZ8awWu3vGPLK8DTB8vZKMqSS0SeEqI4mvWlvD7EXaSPmCp
         KroItelgutjKnPjNEHd4wwYWO9UKITG1p2PPP8HJ3bfe812ucSSjpkaNJlBnvPnySsh5
         v++eWiYa5Sqg0lsBbCGBxgC8yoTSvZgIB269Kew7OjbxV/uysOkAwekOwZ/ghQcWhHeT
         7ZVA==
X-Gm-Message-State: ALoCoQlWHu/awTXl7iBuTmxW6Rjm898v0KcuO+ghmYhrGpeAa9iwmu/DLX6oESA7wLT05YXSbFxp
X-Received: by 10.194.179.200 with SMTP id di8mr11127490wjc.56.1433552314621;
 Fri, 05 Jun 2015 17:58:34 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [2601:9:3400:b0e:cd2e:eeac:4af0:479f]
Message-ID: <CAMyKfL1EXnYhyaDrg6q2jQaFMd-u4roh2a8MhYJ9Fr7+KSHnuw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=e89a8f6468c97af5430517cee8e4
Date: Fri, 5 Jun 2015 17:58:14 -0700
From: Phill MV <phillmv@state.io>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: bson-ruby DoS and possible injection
To: oss-security@lists.openwall.com

--e89a8f6468c97af5430517cee8e4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Egor Homakov recently disclosed a vulnerability in the `bson` rubygem as
seen here: http://sakurity.com/blog/2015/06/04/mongo_ruby_regexp.html

Could we please get a CVE?

By submitting a specially crafted string to a service relying on the bson
rubygem, an attacker may trigger denials of service or even inject data
into victim's MongoDB instances.

Users are advised to update to versions >=3D 3.0.4 of the `bson` rubygem.
Relevant commits can be seen here:
https://github.com/mongodb/bson-ruby/compare/7446d7c6764dfda8dc4480ce16d5c0=
23e74be5ca...28f34978a85b689a4480b4d343389bf4886522e7

Thanks!,
--=20
Phillip Mendon=C3=A7a-Vieira
@phillmv <http://twitter.com/phillmv>

--e89a8f6468c97af5430517cee8e4--
