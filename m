X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3424" "Wednesday" "8" "November" "2017" "14:49:00" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<aff42e56-9413-1081-8589-3de127931a2e@orlitzky.com>" "85" "Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again" nil nil nil "11" "2017110819:49:00" "[oss-security] [CVE-2017-14604] .desktop vulnerability again" (number mark "U       michael@orli Nov  8   85/3424  " thread-indent "\"Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again\"\n") "<1507235866.17141.24.camel@debian.org>" ("<1507235866.17141.24.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27976 invoked by uid 550); 8 Nov 2017 19:49:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27931 invoked from network); 8 Nov 2017 19:49:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1510170542; bh=oXsUSikceKMy/wctM7unqVvIpxxO9gGlKvTLEPsPAZo=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=aLGUxxwliWTQPaIVYLmGg4so6zX2Vm1mNR57ZvhQVpLOvX40NiszpPGHC/oRlbeH8
	 s/hKz4HV/+JEuZRDjsaOZ6Ql50QT1VnxFbHbPZ5k9xddfvZPIrOtR/eCYc2fC7i+nV
	 z7zHpSyBV5OJA8fA3X5q+MG3k6V3oPckfegz+WFI=
To: oss-security@lists.openwall.com
References: <1507235866.17141.24.camel@debian.org>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <aff42e56-9413-1081-8589-3de127931a2e@orlitzky.com>
Date: Wed, 8 Nov 2017 14:49:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1507235866.17141.24.camel@debian.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again

On 10/05/2017 04:37 PM, Yves-Alexis Perez wrote:
> Hi list,
> 
> I'm currently in the process of uploading a nautilus package fixing CVE-2017-
> 14604 which is again a vulnerability in the handling of desktop file. As I
> don't think it's been discussed here, it might be a good idea to do a wrap-up, 
> and maybe start a discussion if people are interested and have good ideas.
...

> Scanning through the various bugs, not everyone agree on how to fix this:
> 
> - Nautilus doesn't use the executable bit anymore but store a trusted
> attribute in a gio/gvfs metadata, which is stored on the filesystem in
> XDG_DATA_DIR/.gvfs-metada (usually ~/.local/share/gvfs-metadata) which I guess
> should not be reachable from a tarball unless the extraction process has a
> directory traversal vulnerability

Using the executable bit was wrong (in my opinion) for one main reason:
the .desktop files aren't actually executable. By marking them +x, you
screw up programs (like bash) that care about the executable bit. There
is now also the issue that you've reported, where the executable bit is
preserved by tar -- we have to assume that the GUI will do something
stupid like hide the file extension.

The last time I thought about this, I came up with something that sounds
spiritually similar to what Nautilus has done. Using Thunar as my file
manager -- suppose I download a file called /home/mjo/malware.desktop
that contains (from your bug report),

  [Desktop Entry]
  Name=CV.pdf
  Exec=sh -c 'touch ./MALWARE_WAS_HERE'
  Terminal=false
  Icon=x-office-document
  Type=Application
  Categories=Office

I don't want to rely on the executable bit, and I don't want to use any
gvfs magic. Instead, when I click on malware.desktop, Thunar should
check for the existence of

  /home/mjo/.local/share/Thunar/home/mjo/malware.desktop           (1)

and then handle two cases,

  i) if the file does exist, and if it's executable, execute it.

  ii) otherwise, prompt me for whether or not I want to run the thing

      ii.a) if I say "no", then do nothing

      ii.b) if I say yes, then create the file at (1) containing

              #!/bin/sh
              sh -c 'touch ./MALWARE_WAS_HERE'

            and mark it executable before running it.

That way, the only thing that gets +x is *actually* executable. The
"metadata" is still associated with the file path, but needs no magic
beyond the ability to execute a shell script.

This idea is probably full of holes, but nobody who's qualified to fix
this clicks on pictures to run programs =P

Obvious caveats:

  1) The file manager would have to substitute "%f" and friends into the
     shell script and get the quoting right.

  2) The path in (1) doesn't change when the file's contents do; a real
     implementation would want to include a hash or something, like

       /home/mjo/.local/share/Thunar/home/mjo/malware.desktop/<sha512>

     The Nautilus implementation might be vulnerable to swapping the
     contents of the file.. the gvfs metadata is supposedly path-based,
     but I know nothing about it.

  3) This will prompt every user the first time he runs a system
     executable that has a .desktop entry. That should be easy to
     solve, though, by using a system location such as
     /var/lib/Thunar/<path>/<sha512> and by having the file manager look
     there first. Distros would simply install the shell script and mark
     it executable.
