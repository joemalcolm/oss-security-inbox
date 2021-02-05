X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2419" "Friday" "5" "February" "2021" "10:42:28" "+0100" "Martin Ortner" "martin.ortner@consensys.net" "<EE41A0A9-8E0F-4C15-8FE0-258A6B3C6FEB@consensys.net>" "67" "[oss-security] [no-cve] Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell command injection" nil nil nil "2" "2021020509:42:28" "[oss-security] [no-cve] Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell command injection" (number mark "U       martin.ortne Feb  5   67/2419  " thread-indent "\"[oss-security] [no-cve] Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell command injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [no-cve] Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell command injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31951 invoked by uid 550); 5 Feb 2021 10:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17947 invoked from network); 5 Feb 2021 09:42:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=consensys.net; s=google;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=yzfJajWEY6iPvu50FpMZyvGGW1vQs7vJ0ZXb9pLNxzA=;
        b=EVdDAgB/RDhaDY6vKxnXRu7fuV/Y+9ajdSISmWUGQqQ0GYJo4eLwFHgq+FdmnhCZZ8
         l7IoDo7UCKFZYPalwIz3i5ld1l6V8xpzrzkpb9B085RIYGVXwe4ou/ojY2SRLQUZ31Kd
         QrHXKtyO6jADR3GIaIm++jKbTQq6mqnq6zDYA5ov+1IQuXkxbiaDdFUjDJoZqoWmLFzR
         fLmHtyv50rWgDDAIPR38mKBJvXaBm7mm7D5VZYi4Cw+Jvn0iaZ6qvBHbsWGfaG1IHPUt
         bQxK5Xv4OIlBMQkBvK8kJeWGAoMmHo5bBSNbc6NGTLHOtNxRe9gX5Z0GebJSYePvXDLf
         IaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=yzfJajWEY6iPvu50FpMZyvGGW1vQs7vJ0ZXb9pLNxzA=;
        b=BrCPtKvxm3elcCuE7n/XkB3/vh/mOYOQczyq3l+Ra4/+k0lkHLrbhMl/mx8RdFHJS8
         Pu3tbA4GT8UjJDlCX5HLonMaVJYIYPW3PMXs/1W8+GW+3LBolnOVGwqtvmGlQe+cftc9
         8WkX+AhLIAjs/fhlowkSjDtBnd9MibPAXpHEJ9knr4aUorbh+g8gDz0IhAVPB8ptXoWP
         VZky18rnXbX03nL6LEY/6d0VSg/veY4na/kkM96QVN+Lk+xl6YqqzO5JndlsLsI0VGXz
         qCJpTrgVC8n4KAWAHMOODl313HI+MokEesSwt6bVfWBVhbhUe9KITFay4vbj03BRAntH
         jVug==
X-Gm-Message-State: AOAM532dPRAr+Hd0Y3IyKWk1FVnfWC3Kxz3QR0XAoiAM0UAhLWOCpeu1
	rktOL36Q5PJmPj11pzndVJs72vrU1NvA/50/TM/jRhIC2/zNy1JRQ45cvH5QKOv2soCL/Tv2gVn
	DA8OBsIcPKWCqa0VnH6dk2i+MNAYEKr/oboKsPp6aDw/eCIwhUv9yZNG+sOAbYXzLul98OKERqa
	PiG+VojtecPvr+hlNNPyE=
X-Google-Smtp-Source: ABdhPJwo48fb+3BCNZHV+ghgOORk7qI+hVxyatgrANkEgo97BXX6tjf9v1CztiJhIYLGRIwE9SIVrA==
X-Received: by 2002:a5d:4046:: with SMTP id w6mr3854656wrp.369.1612518151640;
        Fri, 05 Feb 2021 01:42:31 -0800 (PST)
From: Martin Ortner <martin.ortner@consensys.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <EE41A0A9-8E0F-4C15-8FE0-258A6B3C6FEB@consensys.net>
Date: Fri, 5 Feb 2021 10:42:28 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [oss-security] [no-cve] Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell
 command injection

title: "Nim - Insecure SSL/TLS Defaults, MitM, and nimble shell command inj=
ection"
date: 2021-02-04T14:13:23+01:00

cve:=20
vendor: nim-lang
vendorUrl: https://nim-lang.org/
authors: tintinweb
affectedVersions: [ "<=3D 1.2.6", "nimble <=3Dv0.12.0"]
vulnClass: CWE-295, CWE-78, CWE-348

Vulnerability Note: https://consensys.net/diligence/vulnerabilities/nim-ins=
ecure-ssl-tls-defaults-remote-code-execution/
Vulnerability Note: https://github.com/tintinweb/pub/
Group: https://consensys.net/diligence/research/



# Vulnerability Note

## Summary=20

We found a couple of critical security issues in the defaults for one of th=
e standard-lib components that allows peer-impersonation (MitM) on secure t=
ransports. This also affects the languages package manager. Additionally, t=
he package manager is vulnerable to shell command injection when fetching r=
emote repositories before installing packages:

* 2.1 - `httpClient` does no validate peer certificates by default (appears=
 to be fixed in 1.4.x)
* 2.2 - the package manager `nimble` relies on the insecure `httpClient` de=
faults (unfixed; latest 0.12.0 has not been re-compiled with a fixed nim-c)
* 2.3 - `nimble` falls back to insecure transports if `https` is blocked (u=
nfixed)
* 2.4 - `nimble` shell command injection when fetching a package for instal=
lation (unfixed)


**TLDR;** The Nim (`at least <=3D1.2.6`) `httpClient` default SSL/TLS confi=
guration does not enforce peer certificate verification by default. Non-sec=
ure settings should not be the default as this might unexpectedly expose ot=
her projects to security risks. If you're using `nimble <=3D 0.12.0` anyone=
 can block your TLS session and it will fall back to an insecure transport.=
 Because of the insecure `httpClient` defaults, one can also just intercept=
 your TLS session as the peer verification is too lax. Additionally, nimble=
 appears to be vulnerable to a direct shell command injection when installi=
ng a package (but one can as well just provide a malicious package).

## Details

see https://consensys.net/diligence/vulnerabilities/nim-insecure-ssl-tls-de=
faults-remote-code-execution/

## Proof of Concept

see https://consensys.net/diligence/vulnerabilities/nim-insecure-ssl-tls-de=
faults-remote-code-execution/

### Timeline

```
JUL/09/2020 - contact nim developers @telegram; provided details, PoC
FEB/04/2021 - deadline met. full disclosure.
```



