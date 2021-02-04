X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5275" "Thursday" "4" "February" "2021" "11:33:26" "+0100" "Martin Ortner" "martin.ortner@consensys.net" "<BF1D4D4E-FE1B-424C-ADBB-C53FF0B5054E@consensys.net>" "156" "[oss-security] [CVE-2020-15692] Nim - stdlib Browsers - `open` Argument Injection" nil nil nil "2" "2021020410:33:26" "[oss-security] [CVE-2020-15692] Nim - stdlib Browsers - `open` Argument Injection" (number mark "U       martin.ortne Feb  4  156/5275  " thread-indent "\"[oss-security] [CVE-2020-15692] Nim - stdlib Browsers - `open` Argument Injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-15692] Nim - stdlib Browsers - `open` Argument Injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1582 invoked by uid 550); 4 Feb 2021 11:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23638 invoked from network); 4 Feb 2021 10:33:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=consensys.net; s=google;
        h=from:mime-version:subject:message-id:date:to;
        bh=OQ4F9w4DMkPYI/lvAWaJREbB39s1XZiaedCdkLtljVg=;
        b=Nxi8LzpzR8pSutx+FWjMHxh04oM96v4WpvUSlHLB5dbkSkloXVcExMTvoxXdblTNJ9
         7XnrR56CpH2C298lXbiMRCB0SqaC2SvYKEic3gP3UVpJZNQePWXXOe+Mvn4JMIcNHEtx
         olbNkGwEBGA7+zwBREcbUNzhOGXz4/uDWI9vsrKhJiRpJMoY+BrMME28MMjoCnr04l7U
         H+dUzptEYAsYO3nh8KcCvidX2OZId9BGCh9CFgUn+MuORre+InK2F2/XL3QoQaWPmnOw
         U2YJW6GskX9kESMciJBMZ8djJ6LtfLjhWQeOP3RPd4zlMSkBrXJyLnqV3IVooul7gIld
         MLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=OQ4F9w4DMkPYI/lvAWaJREbB39s1XZiaedCdkLtljVg=;
        b=Ybl+dbGcXaDcV4KZ3JugZWJNbpmorOthKsVDPYL87WtXC3UC3lZxlkGqUhpSuLLoYy
         wRkSrObx0+IZdRb1jEHZ1Mn+AqcQJpA34jKcJQI0h1HMfb73CgBd7fzlcplySiqns34Q
         gMY1gaWnlgh4BYX0cGNhiSZnBVB7qjjrbDGBflvCaUcMiBguEgSaW5ASQDxhNjRusn0J
         iF7QOyMr1zeg2Q/H7RnpGykc2l/zko2nTShO0HVVVsd86IH/i6XG/9YK76YvqNyBZEjS
         vMGeT7C5EZGLpEVRFoLUWEN9bPaN8fCXIN6qSoubL1UnJ6FXovyVDoRFWE50f/NFDEr+
         hZSA==
X-Gm-Message-State: AOAM531fevHYi1ycn0chigRNqUudDHSnYZ+0KC1MEBA9TF5Xv/Kiw+1T
	kPlq6DsxAHtyZHZCKpH29nikmyoJA6qE/M/m69DU3j+fBX+6kbxrPdzoScK5ycJgqAmunKIqR7L
	GisJsEkyzcPoXtui6prGNcBCuq4CuMjVfcIgkW66NGglKU43OlUlUZoZb2sU2JGc5bTbAUQDF74
	L1mHXyrwsZDQ7HkE7I7PM=
X-Google-Smtp-Source: ABdhPJwZqNRUITL/adGWsbxBYvqrMFVZ3+51iwucNULXH4BvlvJBMZDceNpLHPNRpkmVI4Uylan9Fg==
X-Received: by 2002:a1c:e309:: with SMTP id a9mr6821162wmh.99.1612434808356;
        Thu, 04 Feb 2021 02:33:28 -0800 (PST)
From: Martin Ortner <martin.ortner@consensys.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DDFC6CAE-6FEA-4D24-94AC-2A36E1B7A5AA"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <BF1D4D4E-FE1B-424C-ADBB-C53FF0B5054E@consensys.net>
Date: Thu, 4 Feb 2021 11:33:26 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [oss-security] [CVE-2020-15692] Nim - stdlib Browsers - `open` Argument Injection

--Apple-Mail=_DDFC6CAE-6FEA-4D24-94AC-2A36E1B7A5AA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

title: "Nim - stdlib Browsers - `open` Argument Injection"
date: 2020-07-30T19:32:09+01:00

cve: ["CVE-2020-15692"]
vendor: nim-lang
vendorUrl: https://nim-lang.org/
authors: tintinweb
affectedVersions: [ "<=3D 1.2.6" ]
vulnClass: CWE-88

Vulnerability Note: https://consensys.net/diligence/vulnerabilities/nim-bro=
wsers-argument-injection/ <https://consensys.net/diligence/vulnerabilities/=
nim-browsers-argument-injection/>=20
Vulnerability Note: https://github.com/tintinweb/pub/tree/master/pocs/cve-2=
020-15692 <https://github.com/tintinweb/pub/tree/master/pocs/cve-2020-15692>
Group: https://consensys.net/diligence/research/


## Summary=20

The nim-lang stdlib `browsers` provides a convenient interface to open an U=
RL with the system default browser. The library, however, fails to validate=
d that the provided input is actually an URL. An attacker in control of an =
unfiltered URL passed to `browsers.openDefaultBrowser(URL)` can, therefore,=
 provide a local file path that will be opened in the default explorer or p=
ass one argument to the underlying `open` command to execute arbitrary regi=
stered system commands.=20

## Details

### Description

`browsers.openDefaultBrowser()` internally calls `shellExecuteW` passing in=
 the URL as an arg to `open` for Windows and `execShellCmd` with the OS's o=
pen command (`xdg-open` on linux, `open` on MacOs) and the shell quoted `ur=
l` as an argument on nix systems.=20

The implementation is as follows:

```nim
template openDefaultBrowserImpl(url: string) =3D=20
  when defined(windows):
    var o =3D newWideCString(osOpenCmd)
    var u =3D newWideCString(url)
    discard shellExecuteW(0'i32, o, u, nil, nil, SW_SHOWNORMAL)
  elif defined(macosx):
    discard execShellCmd(osOpenCmd & " " & quoteShell(url))=20
  else:
    var u =3D quoteShell(url)
    if execShellCmd(osOpenCmd & " " & u) =3D=3D 0: return
    for b in getEnv("BROWSER").string.split(PathSep):
      try:
        # we use ``startProcess`` here because we don't want to block!
        discard startProcess(command =3D b, args =3D [url], options =3D {po=
UsePath})
        return
      except OSError:
        discard
```

On windows, the attacker controls the `lpFile` argument to `shellExecuteW` =
which may allow opening arbitrary local files.
On MacOs, the attacker controls the first argument to the `open` command wh=
ich takes the following command line switches:

```
Options:=20
      -a                Opens with the specified application.
      -b                Opens with the specified application bundle identif=
ier.
      -e                Opens with TextEdit.
      -t                Opens with default text editor.
      -f                Reads input from standard input and opens with Text=
Edit.
      -F  --fresh       Launches the app fresh, that is, without restoring =
windows. Saved persistent state is lost, excluding Untitled documents.
      -R, --reveal      Selects in the Finder instead of opening.
      -W, --wait-apps   Blocks until the used applications are closed (even=
 if they were already running).
          --args        All remaining arguments are passed in argv to the a=
pplication's main() function instead of opened.
      -n, --new         Open a new instance of the application even if one =
is already running.
      -j, --hide        Launches the app hidden.
      -g, --background  Does not bring the application to the foreground.
      -h, --header      Searches header file locations for headers matching=
 the given filenames, and opens them.
      -s                For -h, the SDK to use; if supplied, only SDKs whos=
e names contain the argument value are searched.
                        Otherwise the highest versioned SDK in each platfor=
m is used.
```

If an attacker manages to pass in an URL that is actually a commandline swi=
tche to open, they may be able to launch arbitrary commands (or do whatever=
 open allows them to do with one argument). For example, `openDefaultBrowse=
r(".")` will open Finder in the current working dir, `openDefaultBrowser("-=
aCalculator")` and `openDefaultBrowser("-bcom.apple.calculator")` launches =
the calculator.=20


### Proof of Concept


launch calculator:

```nim
import browsers
openDefaultBrowser("-bcom.apple.calculator")=20
```

terminate the shell quoting causing an error:

```nim
import browsers
var vector =3D "-bcom.apple.calculator\x00"
openDefaultBrowser(vector)=20

```

```
=E2=87=92  nim c -r -d:ssl test.nim
sh: -c: line 0: unexpected EOF while looking for matching `''
sh: -c: line 1: syntax error: unexpected end of file
```


## Vendor Response

Vendor response: fixed in [v1.2.6](https://nim-lang.org/blog/2020/07/30/ver=
sions-126-and-108-released.html)


### Timeline

```
JUL/09/2020 - contact the development team @telegram; provided details, PoC
JUL/30/2020 - fixed in new release
```

## References


* [1] https://nim-lang.org/
* [2] https://nim-lang.org/install.html
* [3] https://en.wikipedia.org/wiki/Nim_(programming_language)
* [4] https://nim-lang.org/blog/2020/07/30/versions-126-and-108-released.ht=
ml


--Apple-Mail=_DDFC6CAE-6FEA-4D24-94AC-2A36E1B7A5AA--
