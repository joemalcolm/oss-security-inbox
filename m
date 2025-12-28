Received: (qmail 24046 invoked by uid 550); 28 Dec 2025 23:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15400 invoked from network); 28 Dec 2025 07:56:05 -0000
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com> <333061DC-DD0C-445C-9AE9-BEDBA285295E.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="=_Mmk0Xh8HhDwy5AMnEtgRn4_="
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <54F60F14-7FDB-4148-AF82-DEAA35B35E5F.1@smtp-inbound1.duck.com>
Date: Sun, 28 Dec 2025 02:55:55 -0500
From: yen-mummify-yeah@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Type: MIME-Version: Subject: References;
 q=dns/txt; s=postal-KpyQVw; t=1766908556;
 bh=AMi+MGzdtZh2Ya3vS2XAeYawR9rozs+Soz/PNU9lICM=;
 b=mOerliD7N7YvxVLb/w8iuHaavJe7CG6udW+gfv6944qBd9R1RRtQsAkIIxRG7G75CgrauLC33
 Q2TS0suXZ8xy4TPEQNp+e1U+8lOjrPFXYduq+f6zIyImAaIDpFfKr8AhbEtpXjdECTyrlFsxysY
 jT90ItetQDYKxK4J4J4CBRc=
Subject: Re: [oss-security] Systemd vsock sshd

--=_Mmk0Xh8HhDwy5AMnEtgRn4_=
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: quoted-printable

What did systemd say for the malicious vectors on this change?


Dec 28, 2025, 12:20 by dahlman_at_gmail.com_yen-mummify-yeah@duck.com:

> This information is to be publicly released on January 6 per requirements=
 of the distro list. This most likely impacts all recent VMs on most modern=
 hypervisors. Thanks, Greg Dahlman Overview********
> DuckDuckGo>  did not detect any=C2=A0trackers. >  > More <https://duckduc=
kgo.com/-yPPlCVssOmY70ZnFvF-Wddd1QVblRSWUzjDgQW0TwaWlOck8n8Ygc4uUWFOC0MIJjO=
CjbYQbaDnBbkZETdwzuTGuVfdqEg6gB0ZExR5xaWYrVcTRoiFA6TclKbZ_wAFTyPnXg5X0PS0Oy=
yEtjYQBJHEzpeSU-hRarcRIWDBFrNec0XCuV8O59Dplp9litlpyij8AzA8uvCO2V_QI07SH4enl=
MeH4OCVIQSCgUfYvHtKDDZ9v0NuPkhurpI4yN5xx-Ac>
> Unable to verify sender identity
> Deactivate <https://duckduckgo.com/>
> This information is to be publicly released on=C2=A0January 6 per require=
ments of the distro list.
>
> This most likely impacts all recent VMs on most modern hypervisors.
>
> Thanks,
>
> Greg Dahlman
>
>
> Overview
> ********
>
> =C2=A0 **Systemd v256 change** - When the *openssh-server* package is
> =C2=A0 installed on a VM with vsock support, systemd now automatically
> =C2=A0 starts an *sshd* instance that listens on the **af_vsock** socket =
in
> =C2=A0 the **global network namespace** without any manual configuration.
>
> =C2=A0 **vsock exists in the global namespace** - Unlike "af_inet" socket=
s,
> =C2=A0 vsock connections are not bound to a particular network namespace.
> =C2=A0 By default they are visible to every namespace on the host.
>
> =C2=A0 **Violation of namespace isolation** - Users normally expect that
> =C2=A0 services bound in one namespace cannot be accessed from another
> =C2=A0 namespace. The global=E2=80=91namespace vsock listener breaks this
> =C2=A0 expectation, allowing processes in any namespace to reach the *ssh=
d*
> =C2=A0 instance.
>
> =C2=A0 **Enables malware and lateral movement** - Malicious code that runs
> =C2=A0 inside a container or sandbox can exploit the exposed vsock listen=
er
> =C2=A0 to connect to the host=E2=80=99s SSH daemon, thereby **bypassing
> =C2=A0 network=E2=80=91segmentation rules** and **moving laterally** acro=
ss the
> =C2=A0 host. This creates a powerful attack vector for malware that can
> =C2=A0 spread from isolated workloads to the host or other guests without
> =C2=A0 needing traditional network exposure.
>
> =C2=A0 **Hard=E2=80=91to=E2=80=91audit data path** - vsock provides a low=
=E2=80=91level,
> =C2=A0 kernel=E2=80=91backed IPC channel that is opaque to many security =
tools. It
> =C2=A0 can be used by sandboxed programs or containers to send commands or
> =C2=A0 data to sandboxed programs or containers in a way that is difficult
> =C2=A0 to monitor or audit.
>
> =C2=A0 **vsock ss/netstat invisibility** - The visibility feature is
> =C2=A0 isolated in a network namespace, letting processes evade detection
> =C2=A0 in an already hard=E2=80=91to=E2=80=91audit subsystem.
>
> =C2=A0 **Trivial extension of active threats** - If not already being
> =C2=A0 leveraged, it would be trivial to extend [BRICKSTORM] and [shai-
> =C2=A0 hulud] to take advantage of vsock as described above. As
> =C2=A0 [BRICKSTORM] is already leveraging vsock on VmWare, it is unlikely=
 it
> =C2=A0 is not already being used by advanced threats.
>
> [BRICKSTORM] > https://www.cisa.gov/news-events/analysis-reports/ar25-338=
a#AppC
>
> [shai-hulud] > https://www.wiz.io/blog/shai-hulud-2-0-aftermath-ongoing-s=
upply-chain-attack
>



--=_Mmk0Xh8HhDwy5AMnEtgRn4_=--
