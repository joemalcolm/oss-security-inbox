X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/21/4
Message-ID: <806c9e2b-a090-8b03-4da7-b58ab040a251@geeklan.co.uk>
Date: Fri, 21 Jul 2023 03:46:28 +0100
From: Sevan Janiyan <venture37@...klan.co.uk>
To: oss-security@...ts.openwall.com
Subject: Re: Announce: OpenSSH 9.3p2 released
Content-Type: text/plain; charset=utf-8

On 21/07/2023 02:04, Matthew Fernandez wrote:
> I don’t think this helps much though, right? The Qualys research that
>  motivated this found an exploit chain using only libs present in 
> /usr/lib in a default Ubuntu install.

Yes, you're right, but, you can be a bit more granular in the paths that
you allow without introducing more knobs for when you forward your
agent. e.g Ubuntu & Debian install the relevant libraries into
/usr/lib/$ARCH-linux-gnu/pkcs11. Rather than permitting anything from
/usr/lib, only load from the pkcs11 directory.
Looking into it, it looks like both distros (inherited from Debian?)
install some libraries into /usr/lib/$ARCH-linux-gnu and symlink into
/usr/lib/$ARCH-linux-gnu/pkcs11 so that would need to change to go the
other way. e.g opensc-pkcs11.so is symlinked as such.

> If you want to lock down loading to a specific non-/usr/lib path that
> you have control over, this suggests you know and are in control of
> the PKCS#11 providers you’re going to support. In which case, why not
> avoid dynamic loading to begin with? I guess the allowlist and new
> defaults are the answer to this conundrum though.
I was thinking how you would address the issue if you were responsible 
for the OS/distro build rather than on the user/operator side and that 
it would be easier to insure that the PKCS#11 libraries you are 
packaging get installed into a specific directory and only permit the 
ssh-agent to load from that directory, avoiding the need to maintain an 
allowlist. The number of shared libraries you would then need to analyse 
would be significantly smaller too (60,000? yikes)


Sevan
