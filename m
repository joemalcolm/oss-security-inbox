X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2022" "Thursday" "29" "September" "2016" "11:50:02" "-0400" "Mike Kienenberger" "mkienenb@gmail.com" "<CAM1yOjZBQC8v0TAyi95b=1G11j-8wTrhZG4kJWG=Y8K8W5mYPw@mail.gmail.com>" "53" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.1.2 released" nil nil nil "9" "2016092915:50:02" "[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.1.2 released" (number mark "U       mkienenb@gma Sep 29   53/2022  " thread-indent "\"[oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.1.2 released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17672 invoked by uid 550); 29 Sep 2016 16:24:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24420 invoked from network); 29 Sep 2016 15:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=q4LpoE7ipFmMYRVsGD6rgM/pSThyJQYWle/njMy8uPM=;
        b=Vm9hPMkpWtXxAMqFKyEKYpVhrduNPSyrJxWUS5YQrwLiKRStEzZ2BRS2PINB1HVL0W
         /NuJx481XkSgMsDpfOWOF4qD0teX0E1GDMcZg/mOaUqXCD7tQUyYCtJ71Of3OX3zfj9L
         QSAZrn7pf5V/njG+yPkRbSsy24b+UQwewrshSLpCH8k31qV5XCvkrBmrMqNEGLLoJ9Vs
         lp09OFugA0YhaRwVXyXuC63JRFZs+oSkzrIT22Eq5Nm/TB3N6UTwVVh9EPZqZVEcsL2w
         W7XsaDf6Kkl1VnViZMubBoHHy6MbKoeppv3up/qUJ691CvqjIO+0e9H3xXNbDVfY9d4u
         l24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=q4LpoE7ipFmMYRVsGD6rgM/pSThyJQYWle/njMy8uPM=;
        b=N2kUwADd6LrG4SH8icksMx++5qSgHtI1fhuA3DUCzAui7uhYLp6+9fWjqvI6a5CAMJ
         tf66USuvopgYFh4uNwSOeTiVAeXQMW2JWom5LYteLdrX9Y6+LFv1UgJIU9y/45azezo4
         MjQn0BUIcBI01367RUneKJ5ENvZpdBvZhUxP5iSIO/quiJTrfyNedJ6eQWbeIbegySwr
         OFaRKB9phVr8jFNeHaV8fIkW9v+CeTIBiCu6IvpFDY/k5JDGWjJ/c4Vfctrliapkq+YK
         a7zBeJlJKwXXBLogjl8T9viCqM2nL0+P5Xun3g+I/EPLFkdP38U2gkkviQHnQzb797Fm
         j5yw==
X-Gm-Message-State: AA6/9Rlt8D7jOz7ULNV96XRqYGLjaVdnv/hPu0Vy6R8VxogO1E8ULb8rzDt5XZ2+cw6DHCnZcGumz8raelpVUQ==
X-Received: by 10.157.47.165 with SMTP id r34mr1525326otb.64.1475164222898;
 Thu, 29 Sep 2016 08:50:22 -0700 (PDT)
MIME-Version: 1.0
From: Mike Kienenberger <mkienenb@gmail.com>
Date: Thu, 29 Sep 2016 11:50:02 -0400
Message-ID: <CAM1yOjZBQC8v0TAyi95b=1G11j-8wTrhZG4kJWG=Y8K8W5mYPw@mail.gmail.com>
To: announce@myfaces.apache.org, MyFaces Development <dev@myfaces.apache.org>, 
	MyFaces Discussion <users@myfaces.apache.org>
Cc: "security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANNOUNCE][CVE-2016-5019] Apache MyFaces Trinidad 2.1.2 released

The Apache MyFaces team is pleased to announce the release of Apache
MyFaces Trinidad 2.1.2.
=2E
MyFaces Trinidad is a feature-rich renderkit for JavaServer(tm) Faces
that provides an extendibles framework and extensive skinning support.
This version is designed to be used with the JSF 2.1 specification.

CVE-2016-5019:
Trinidad=E2=80=99s CoreResponseStateManager both reads and writes view state
strings using
ObjectInputStream/ObjectOutputStream directly.  By doing so, Trinidad
bypasses the
view state security features provided by the JSF implementations - ie. the =
view
state is not encrypted and is not MAC=E2=80=99ed.  Trinidad=E2=80=99s
CoreResponseStateManager will
blindly deserialize untrusted view state strings, which makes Trinidad-based
applications vulnerable to deserialization attacks.

Apache MyFaces Trinidad is available in both binary and source
distributions, and there are examples available as well:

    * http://myfaces.apache.org/trinidad/download.html

Apache MyFaces Trinidad is available in the central Maven repository
under Group ID "org.apache.myfaces.trinidad"

Release Notes - MyFaces Trinidad - Version 2.1.2

Bug
    [TRINIDAD-2542] - CVE-2016-5019: MyFaces Trinidad view state
deserialization security vulnerability

    [TRINIDAD-2228] - java.lang.UnsupportedOperationException
    [TRINIDAD-2282] - In validateLength, a default hintRange message
is displayed instead of hintMaximum even when minimum value is not set
    [TRINIDAD-2436] - We should update Table's selection state during
invoke application phase
    [TRINIDAD-2445] - Prevent exceptions from propagating out of the
ServletFilter
    [TRINIDAD-2541] - Check UTF-8 encoding in example files

Improvement

    [TRINIDAD-2239] - Improve the ancestor based change filtering
mechanism by introducing a formal ComponentChangeFilter
    [TRINIDAD-2441] - URLUtil to escape a URL and remove invalid characters
    [TRINIDAD-2540] - Align Trinidad 2.1.x so it can be editable using
Netbeans 8

regards,

Mike Kienenberger
