X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13085" "Thursday" "14" "May" "2015" "20:20:53" "+0000" "Jason Geffner" "jason@crowdstrike.com" "<038f60e2ea6141a394cc6d89c273f85d@casmbox01.crowdstrike.sys>" "327" "RE: [oss-security] VENOM - CVE-2015-3456" nil nil nil "5" "2015051420:20:53" "[oss-security] VENOM - CVE-2015-3456" (number mark "        jason@crowds May 14  327/13085 " thread-indent "\"RE: [oss-security] VENOM - CVE-2015-3456\"\n") "<20150513161823.GA17176@openwall.com>" ("<ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>" "<20150513161823.GA17176@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3613 invoked by uid 550); 14 May 2015 20:21:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3595 invoked from network); 14 May 2015 20:21:07 -0000
Thread-Topic: [oss-security] VENOM - CVE-2015-3456
Thread-Index: AdCNdrOLH6y+5iGkRi64PgCdPhvzeAAXGfKAAA3vTuAAELBM0AANaKFQ
Message-ID: <038f60e2ea6141a394cc6d89c273f85d@casmbox01.crowdstrike.sys>
References: <ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>
 <20150513161823.GA17176@openwall.com>  
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.100.0.9]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Thu, 14 May 2015 20:20:53 +0000
From: Jason Geffner <jason@crowdstrike.com>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] VENOM - CVE-2015-3456
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

VENOM (CVE-2015-3456)
Virtualized Environment Neglected Operations Manipulation


Discovered by Jason Geffner
jason@crowdstrike.com


ABSTRACT
--------

This email describes a vulnerability in QEMU's virtual Floppy Disk Controll=
er (FDC), exploitation of which may allow malicious code inside a virtual m=
achine guest to perform arbitrary code execution on the host machine (a "VM=
 escape").


SCOPE
-----

QEMU's virtualized hardware is used in numerous virtualization platforms, n=
otably Xen, KVM, VirtualBox, and the native QEMU client.


VULNERABILITY
-------------

All code snippets in this section are from http://git.qemu.org/?p=3Dqemu.gi=
t;f=3Dhw/block/fdc.c;hb=3D24a5c62cfe3cbe3fb4722f79661b9900a2579316, which w=
as the last commit before the VENOM vulnerability was patched on 2015-05-13.

QEMU's FDC uses a 512-byte first-in first-out (FIFO) buffer for data storag=
e:
___________________________________________________________________________=
_____
struct FDCtrl {
...
    /* Command FIFO */
    uint8_t *fifo;
    int32_t fifo_size;
    uint32_t data_pos;
    uint32_t data_len;
...
};
...
    fdctrl->fifo =3D qemu_memalign(512, FD_SECTOR_LEN);
    fdctrl->fifo_size =3D 512;
___________________________________________________________________________=
_____

The FDC's data_pos and data_len fields above are initialized to 0 upon FDC =
reset.

Code in the VM guest can write to the FIFO buffer by sending data to the FD=
C via its FD_REG_FIFO I/O port. Writes are handled by the function below, w=
ith each byte sent to the I/O port getting passed to this function as the v=
alue parameter:
___________________________________________________________________________=
_____
static void fdctrl_write_data(FDCtrl *fdctrl, uint32_t value)
{
    FDrive *cur_drv;
    int pos;
...
    if (fdctrl->data_pos =3D=3D 0) {
        /* Command */
        pos =3D command_to_handler[value & 0xff];
        FLOPPY_DPRINTF("%s command\n", handlers[pos].name);
        fdctrl->data_len =3D handlers[pos].parameters + 1;
        fdctrl->msr |=3D FD_MSR_CMDBUSY;
    }

    FLOPPY_DPRINTF("%s: %02x\n", __func__, value);
    fdctrl->fifo[fdctrl->data_pos++] =3D value;
    if (fdctrl->data_pos =3D=3D fdctrl->data_len) {
        /* We now have all parameters
         * and will be able to treat the command
         */
        if (fdctrl->data_state & FD_STATE_FORMAT) {
            fdctrl_format_sector(fdctrl);
            return;
        }

        pos =3D command_to_handler[fdctrl->fifo[0] & 0xff];
        FLOPPY_DPRINTF("treat %s command\n", handlers[pos].name);
        (*handlers[pos].handler)(fdctrl, handlers[pos].direction);
    }
}
___________________________________________________________________________=
_____

The function above uses the first received I/O byte as a command ID, with e=
ach ID mapping to a handler:
___________________________________________________________________________=
_____
static const struct {
    uint8_t value;
    uint8_t mask;
    const char* name;
    int parameters;
    void (*handler)(FDCtrl *fdctrl, int direction);
    int direction;
} handlers[] =3D {
    { FD_CMD_READ, 0x1f, "READ", 8, fdctrl_start_transfer, FD_DIR_READ },
    { FD_CMD_WRITE, 0x3f, "WRITE", 8, fdctrl_start_transfer, FD_DIR_WRITE },
    { FD_CMD_SEEK, 0xff, "SEEK", 2, fdctrl_handle_seek },
...
};
___________________________________________________________________________=
_____

Each handler has an associated parameter count (stored in the parameters va=
riable) and the I/O bytes written to the FIFO buffer after the command ID b=
yte are considered parameters for the command handler. When fdctrl_write_da=
ta() determines that all parameters have been supplied (by comparing the in=
crementing data_pos with data_len), the command handler's function is calle=
d to operate on the data in the FIFO buffer.

The FDC supports 32 different FIFO-based commands, including a default hand=
ler for unrecognized command ID values. The code path for each command hand=
ler function resets the FDC's data_pos to 0 at the end of its processing, e=
nsuring that the FIFO buffer can't be overflowed. See below for an example,=
 where the handler function fdctrl_handle_partid() calls fdctrl_set_fifo() =
which resets data_pos to 0:
___________________________________________________________________________=
_____
    { FD_CMD_PART_ID, 0xff, "PART ID", 0, fdctrl_handle_partid },
___________________________________________________________________________=
_____
___________________________________________________________________________=
_____
static void fdctrl_handle_partid(FDCtrl *fdctrl, int direction)
{
    fdctrl->fifo[0] =3D 0x41; /* Stepping 1 */
    fdctrl_set_fifo(fdctrl, 1);
}
___________________________________________________________________________=
_____
___________________________________________________________________________=
_____
static void fdctrl_set_fifo(FDCtrl *fdctrl, int fifo_len)
{
    fdctrl->data_dir =3D FD_DIR_READ;
    fdctrl->data_len =3D fifo_len;
    fdctrl->data_pos =3D 0;
    fdctrl->msr |=3D FD_MSR_CMDBUSY | FD_MSR_RQM | FD_MSR_DIO;
}
___________________________________________________________________________=
_____

For 30 of the command handler functions, this data_pos reset happens immedi=
ately at the completion of the command processing, similarly to the example=
 above. However, for two of the command handler functions, the data_pos res=
et is delayed or can be circumvented.

The code below shows the handler for the "READ ID" command:
___________________________________________________________________________=
_____
    { FD_CMD_READ_ID, 0xbf, "READ ID", 1, fdctrl_handle_readid },
___________________________________________________________________________=
_____
___________________________________________________________________________=
_____
static void fdctrl_handle_readid(FDCtrl *fdctrl, int direction)
{
    FDrive *cur_drv =3D get_cur_drv(fdctrl);

    cur_drv->head =3D (fdctrl->fifo[1] >> 2) & 1;
    timer_mod(fdctrl->result_timer,
                   qemu_clock_get_ns(QEMU_CLOCK_VIRTUAL) + (get_ticks_per_s=
ec() / 50));
}
___________________________________________________________________________=
_____

The fdctrl_handle_readid() function above sets a 20 ms timer (result_timer =
is initialized to point to the function fdctrl_result_timer() during FDC in=
itialization). After 20 ms, fdctrl_result_timer() gets executed, which call=
s fdctrl_stop_transfer(), which calls fdctrl_set_fifo(), which resets data_=
pos to 0. During that 20 ms time window though, code in the VM guest can co=
ntinue writing to the FIFO buffer, and since fdctrl_write_data() will conti=
nue to increment data_pos for each I/O byte received, code in the VM guest =
can overflow the FIFO buffer with arbitrary data.

The code below shows the handler for the "DRIVE SPECIFICATION COMMAND" comm=
and:
___________________________________________________________________________=
_____
    { FD_CMD_DRIVE_SPECIFICATION_COMMAND, 0xff, "DRIVE SPECIFICATION COMMAN=
D", 5, fdctrl_handle_drive_specification_command },
___________________________________________________________________________=
_____
___________________________________________________________________________=
_____
static void fdctrl_handle_drive_specification_command(FDCtrl *fdctrl, int d=
irection)
{
    FDrive *cur_drv =3D get_cur_drv(fdctrl);

    if (fdctrl->fifo[fdctrl->data_pos - 1] & 0x80) {
        /* Command parameters done */
        if (fdctrl->fifo[fdctrl->data_pos - 1] & 0x40) {
            fdctrl->fifo[0] =3D fdctrl->fifo[1];
            fdctrl->fifo[2] =3D 0;
            fdctrl->fifo[3] =3D 0;
            fdctrl_set_fifo(fdctrl, 4);
        } else {
            fdctrl_reset_fifo(fdctrl);
        }
    } else if (fdctrl->data_len > 7) {
        /* ERROR */
        fdctrl->fifo[0] =3D 0x80 |
            (cur_drv->head << 2) | GET_CUR_DRV(fdctrl);
        fdctrl_set_fifo(fdctrl, 1);
    }
}
___________________________________________________________________________=
_____

The fdctrl_handle_drive_specification_command() function above is called af=
ter the FDC receives the FD_CMD_DRIVE_SPECIFICATION_COMMAND command and its=
 5 parameter bytes. The if-condition in the handler will evaluate to false =
if the fifth parameter byte doesn't have its most-significant-bit (MSB) set=
. The else-if-condition will always evaluate to false since fdctrl->data_le=
n will always be set to 6 by the fdctrl_write_data() function for the FD_CM=
D_DRIVE_SPECIFICATION_COMMAND command. Thus, after sending the FD_CMD_DRIVE=
_SPECIFICATION_COMMAND command and its 5 parameter bytes (with the fifth pa=
rameter byte's MSB set to 0), code in the VM guest can continue writing to =
the FIFO buffer, and since fdctrl_write_data() will continue to increment d=
ata_pos for each I/O byte received, code in the VM guest can overflow the F=
IFO buffer with arbitrary data.


-----Original Message-----
From: Jason Geffner
Sent: Wednesday, May 13, 2015 5:05 PM
To: 'solar@openwall.com'
Cc: 'oss-security@lists.openwall.com'
Subject: RE: [oss-security] VENOM - CVE-2015-3456

Hi Alexander,

Thank you for your response. As you mentioned, we shared the complete techn=
ical details of this vulnerability with the private "distros" list on April=
 30th, with the embargo on the vulnerability ending today.

We considered different ways of publicly sharing that technical information=
 post-embargo and ultimately decided that providing greater details about t=
he vulnerability and attack vectors would be better published by members of=
 the community external to CrowdStrike. To that end, we'd like to defer to =
Petr Matousek's excellent blog post at https://securityblog.redhat.com/2015=
/05/13/venom-dont-get-bitten/ where he describes the FDC's FIFO buffer vuln=
erability and the FDC commands that could be used by an adversary as attack=
 vectors for the vulnerability.

I understand your criticism, and as a fellow security researcher, believe m=
e, I fully empathize. When we are capable of sharing more technical details=
 publicly, rest assured that I will notify oss-security at that time.

Sincerely,
Jason Geffner
Sr. Security Researcher, CrowdStrike


-----Original Message-----
From: Solar Designer [mailto:solar@openwall.com]
Sent: Wednesday, May 13, 2015 11:18 AM
To: Jason Geffner
Cc: oss-security@lists.openwall.com
Subject: Re: [oss-security] VENOM - CVE-2015-3456

All -

JFYI, Jason first brought this issue to the distros list on April 30.

Jason -

Thank you for making this mandatory oss-security posting, but ...

On Wed, May 13, 2015 at 12:22:19PM +0000, Jason Geffner wrote:
> VENOM, CVE-2015-3456, is a security vulnerability in the virtual
> floppy
drive code used by many computer virtualization platforms. This vulnerabili=
ty may allow an attacker to escape from the confines of an affected virtual=
 machine (VM) guest and potentially obtain code-execution access to the hos=
t. Absent mitigation, this VM escape could open access to the host system a=
nd all other VMs running on that host, potentially giving adversaries signi=
ficant elevated access to the host's local network and adjacent systems.

This is way too little technical detail.  Your distros list posting include=
d a 4-page PDF file that actually contained some technical detail.  Ideally=
, you'd post a text-only advisory with at least similar level of detail in =
here.  Can you do that, please?

> Exploitation of the VENOM vulnerability can expose access to corporate
intellectual property (IP), in addition to sensitive and personally identif=
iable information (PII), potentially impacting the thousands of organizatio=
ns and millions of end users that rely on affected VMs for the allocation o=
f shared computing resources, as well as connectivity, storage, security, a=
nd privacy.

This paragraph is purely PR.  Not appropriate content for oss-security.

> Please see http://venom.crowdstrike.com/ for further details.

While links to external resources are acceptable, ideally you'd include the=
 technical detail right in your oss-security posting as well.

Anyway, going to that URL I see only a FAQ that is lacking on technical det=
ail, and download links for the graphics.  There isn't even a download link=
 for the pretty PDF you had ready 2 weeks ago, or did I miss it?  Maybe add=
 it now?  Once again, ideally the content should be right here and in text =
form rather than only on CrowdStrike website and "in graphics" or in PDF, b=
ut making that PDF available for download is a step in the right direction.

I am sorry for the criticism.  I actually appreciate your discovery and han=
dling of this vulnerability.  But you can clearly do better in the ways I m=
entioned above, and clearly people are now wondering whether the vulnerabil=
ity is actually exploitable or just hype.  For example, questions and conce=
rns and sarcasm of this sort have appeared multiple times on my Twitter tim=
eline today.

I'd appreciate it if you release more information to the general public.

Thanks,

Alexander
