Received: (qmail 5193 invoked by uid 550); 13 May 2024 15:44:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9895 invoked from network); 12 May 2024 02:44:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715481862; x=1716086662; darn=lists.openwall.com;
        h=in-reply-to:references:subject:to:mime-version:user-agent:reply-to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SPG78aNoour3oga7elBEM8O5dpDmCAWhLpx7pTmPUfE=;
        b=H6zFMMixw2OKpjQ1l3mdvGCr7lAMWl3vFjo1YV0VzUPCT4Fv0KoxsJbAq16S8qxmlm
         8lHISShZPwDEL6qQSR0H1yUum5mp09D3Ju3BPS2nwzqLPi7YV3slY8FLNmYO/wbpVAlx
         BZ9cTVdLdoYEwgXN/KSTxB3QU3M9jhFBGzKS9GCklmXUW7Pw2aXjWpbfe4GdbFqyxcZf
         NG56+FHVkKZqDwRAdhSAkrh/vjnbr/eREGaQkPCyeqyJaLfLU/leiDKwRgwr37W/QZ10
         rB/WtsjZjw3kaWtgPDdvP1/HhMOa9S1UacBrZdZF05xeiR2IAyCgflFql+xJL5mghlGp
         DP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715481862; x=1716086662;
        h=in-reply-to:references:subject:to:mime-version:user-agent:reply-to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SPG78aNoour3oga7elBEM8O5dpDmCAWhLpx7pTmPUfE=;
        b=AF/ZQOXXI7deUQ9ZFI2JVF+SQ3yRQqbeWc36q54eOxyhbMPnknRz1/9njza5wwPeL7
         M3kz+2JfTjbW/bchEP2r5hmgySOl8G6/3E7BewsggQUGueJLpLXfsvfSLuWbtNuunm3d
         8pHNfMb5NSslK4zOS5x0TT6tOXwqpMAUSWaBUcFp86kInuCakunJah5nqMRbSWNO7dAP
         xuUA7H0uSW9rKm7VGJyMJLRAkU5w1OvLKSNCZtLDO8rOcyRp/kb87bDzzD2hiIwIxrdC
         v3mQixfvCYY0vzvrLTjOjCKIsmEvwoVaZdpP9xcYw0PkBvemmg+gc3tl4MwRLQ9xa9RI
         zSQw==
X-Gm-Message-State: AOJu0YzocopFWU+1JViOuJbRORQdIfMhkfn0GUcAwLKNCbp8PqINxPos
	vCQEI2oGtdOLngOGyvpoLSwCVKE6urMG0yDR+U198EVPqmTzhz/VzdDOyeFb
X-Google-Smtp-Source: AGHT+IHyJgCHFel4C2pIu6Va5+3mOTN8oVdOIQkbu9hoaFRsMhYMtUxL/+Tp+rQJINEY6tld2HWWtQ==
X-Received: by 2002:aca:1a13:0:b0:3c9:6c89:9a79 with SMTP id 5614622812f47-3c99704c359mr7264747b6e.21.1715481861494;
        Sat, 11 May 2024 19:44:21 -0700 (PDT)
Message-ID: <66402D01.8090200@gmail.com>
Date: Sat, 11 May 2024 21:44:17 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
Content-Type: multipart/mixed;
 boundary="------------000100080402000705020703"
Subject: Re: [oss-security] Microsoft Device Firmware Configuration Interface
 (DFCI) in Linux efivars directory

--------------000100080402000705020703
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Corey Lopez wrote:
> I have dual boot Windows 11 Home Edition and Debian based setup on my laptop.
>
> Distributor ID: Kali
> Description:    Kali GNU/Linux Rolling
> Release:        2024.1
> Codename:       kali-rolling
>
> After realizing a security breach on my Kali system I discovered /etc/network/interface
> had the immutable attribute set while trying to restrict access using chmod. I decided to
> investigate other files on my system with the immutable attribute set by running this
> command as root:
>
> # find / -type f -exec lsattr {} + 2>/dev/null > immutable-list-find.txt
>
> This led me the directory /sys/firmware/efi/efivars/ where I discovered efi variables
> pertaining Microsoft's Device Firmware Configuration Interface (DFCI).

Were the EFI variables marked immutable or did you make a list of every 
file on the system and notice them on that list?

> Microsoft's
> DFCI enables zero touch remote configuration of UEFI BIOS giving the ability to
> manage BIOS settings and hardware. The DFCI allows for remote disabling or enabling
> of cameras, microphones, radios, boot external media, bootstrapping an OS, cpu
> virtualization, and I/O virtualization. According to Microsoft's github page, the zero
> touch certificate is shared by all DFCI-enabled systems and does not need to be injected
> at manufacturing.
>
> Microsoft advertises DFCI as a defense mechanism against rootkits, however it seems that it
> is being used as a UEFI bootkit. According to Microsoft DFCI is not available for Windows 10
> or 11 Home Edition. My Acer Aspire 3 15 has Windows 11 Home Edition, and was purchased
> as a consumer product versus a commercial. This means that not only is there a capability that
> DFCI can be implemented on a consumer product, but through a Linux based operating system.
>   

I will admit that this seems strange, but it appears that your laptop 
has firmware support for DFCI even though, by Microsoft's claims, it 
should not be eligible for that feature.

> I will provide the ASCII output of each file that I found on my Kali Linux system from the
> /sys/firmware/efi/efivars/ directory. I will not provide the entire hexdump output to save space.
> However, I will provide more if requested after my initial posting. 
>
> [... snip ASCII columns from hex dump; reformatted below ...]

For a first step, I note that those EFI variables appear to contain XML, 
and have (using ` sed -e '/^|/{: L;/|$/N;s/|\n|//;t L}' | sed -e 
'/|$/{N;N;s/\(.\{16\}\)|\n\*\n|/\1\1/}' -e 's/^|\.\.\.\.//' -e 
's/\.|\n/\n/' -e 's/\.|$//' | awk '/^<\?xml/ { print | "xml_pp"; 
close("xml_pp"); next } 1' `) converted that back to readable ASCII, 
with the XML nicely pretty-printed; attached in full, some possibly 
interesting details inline below:

> File Name: DfciPermissionCurrent-3a9777ea-0d9f-4b65-9ef3-7caa7c41994b
>
> ASCII Output:
>
> <?xml version="1.0" encoding="utf-8"?>
> <CurrentPermissionsPacket Default="1" Delegated="128">
>   <Date>2024-01-30T13:51:08</Date>
>   [...]
>   <LSV>0</LSV>
> </CurrentPermissionsPacket>


The "Date" field is potentially interesting if you had the laptop at 
that time, but if the laptop is newer than that date, it and the other 
dates are likely manufacturing-related timestamps.

> File Name: DfciSettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01
>
> ASCII Output:
>
> <?xml version="1.0" encoding="utf-8"?>
> <CurrentSettingsPacket>
>   <Date>2024-01-30T13:51:34</Date>
>   

The dates are close together; did you have that laptop prior to January 
30th, 2024?

>   <Settings>
>     [...]
>     <SettingCurrent>
>       <Id>Device.Password.Password</Id>
>       <Value>No System Password</Value>
>     </SettingCurrent>
>   

I could not pass up this apparent detail that it seems Microsoft may be 
putting passwords in plaintext again, unless that field merely reports a 
status.

>     <SettingCurrent>
>       <Id>Dfci.RecoveryUrl.String</Id>
>       <Value/>
>     </SettingCurrent>
>   

This and several following fields all have no value whatsoever, while 
others seem to me to have neutral values; this looks like DFCI is 
present but unconfigured.

>     [...]
>   </Settings>
>   <LSV>0</LSV>
> </CurrentSettingsPacket>
>
> File Name: UEFISettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01
>
> ASCII Output:
>
> <?xml version="1.0" encoding="utf-8"?>
> <CurrentSettingsPacket>
>   <Date>2024-01-30T13:51:34</Date>
>   <Settings>
>   [... snip apparent duplicate settings ...]
>   </Settings>
>   <LSV>0</LSV>
> </CurrentSettingsPacket

The date here matches the date on the DfciSettingsCurrent variable.

> I did discover loop devices on my system that I could not remove with the 
> losetup command. I had to manually remove them with the rm -f command from 
> the /dev/disks directory.

Using rm does not remove the devices at all:  they are still present in 
the kernel, and you only removed the nodes from the filesystem.

> Also, I ran the lsof command, which helped me discover 
> the type of file systems that were being used. This prompted me to use apt purge 
> to remove Gnome Virtual File System from my laptop. 
>
> # lsof /dev/loop*
>
> I received this in response:
>
> can't stat() fuse.gvfsd-fuse file system /run/user/1000/gvfs
> can't stat() fuse.portal file system /run/user/1000/doc
>   

Others have explained this weirdness; it is actually normal 
functionality, except possibly for loop devices having been in use.  
Just to make sure, you did run lsof *before* using rm, right?

> This should be enough to give others places to look to determine if they have been
> infected, however I will be more than happy to provide more if needed.
>   

See if the mystery loop devices come back after a reboot, and if so, use 
losetup to determine what files they are attached to; that information 
is needed to distinguish between normal operation and a possible 
persistent compromise.  Also, I vaguely remember that attempting to 
detach a loop device that is not attached can also report an error.  
They may not actually be in use after all.


-- Jacob

--------------000100080402000705020703
Content-Type: text/plain;
 name="dfcidump.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="dfcidump.txt"

File Name: DfciDeviceIdentifier-4123a1a9-6f50-4b58-9c3d-56fc24c6c89e

ASCII output:

<?xml version="1.0" encoding="utf-8"?>
<UEFIDeviceIdentifierPacket>
  <Identifiers>
    <Identifier>
      <Id>Manufacturer</Id>
      <Value>Acer</Value>
    </Identifier>
    <Identifier>
      <Id>Product Name</Id>
      <Value>Aspire A315-44P</Value>
    </Identifier>
    <Identifier>
      <Id>Serial Number</Id>
      <Value>NXKSJAA0044050439E3400</Value>
    </Identifier>
  </Identifiers>
  <DfciVersion>2</DfciVersion>
</UEFIDeviceIdentifierPacket>

File Name: DfciIdentityCurrent-de6a8726-05df-43ce-b600-92bd5d286cfd

(NOTE: something that stood out to me is the 
Zero Touch ID: 0989C5F7EA3379388F79990875B23E031A5DA554)

ASCII Output:

<?xml version="1.0" encoding="utf-8"?>
<UEFIIdentityCurrentPacket>
  <Certificates>
    <Certificate>
      <Id>User</Id>
      <Value>Cert not installed</Value>
    </Certificate>
    <Certificate>
      <Id>User1</Id>
      <Value>Cert not installed</Value>
    </Certificate>
    <Certificate>
      <Id>User2</Id>
      <Value>Cert not installed</Value>
    </Certificate>
    <Certificate>
      <Id>Owner</Id>
      <Value>Cert not installed</Value>
    </Certificate>
    <Certificate>
      <Id>ZeroTouch</Id>
      <Value>0989C5F7EA3379388F79990875B23E031A5DA554</Value>
    </Certificate>
  </Certificates>
</UEFIIdentityCurrentPacket>

File Name: DfciPermissionCurrent-3a9777ea-0d9f-4b65-9ef3-7caa7c41994b

ASCII Output:

<?xml version="1.0" encoding="utf-8"?>
<CurrentPermissionsPacket Default="1" Delegated="128">
  <Date>2024-01-30T13:51:08</Date>
  <Permissions>
    <PermissionCurrent>
      <Id>Dfci.OwnerKey.Enum</Id>
      <PMask>9</PMask>
      <DMask>128</DMask>
    </PermissionCurrent>
    <PermissionCurrent>
      <Id>Dfci.ZtdKey.Enum</Id>
      <PMask>1</PMask>
    </PermissionCurrent>
    <PermissionCurrent>
      <Id>Dfci.ZtdUnenroll.Enable</Id>
      <PMask>0</PMask>
    </PermissionCurrent>
    <PermissionCurrent>
      <Id>Dfci.Ztd.Recovery.Enable</Id>
      <PMask>0</PMask>
    </PermissionCurrent>
  </Permissions>
  <LSV>0</LSV>
</CurrentPermissionsPacket>

File Name: DfciSettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01

ASCII Output:

<?xml version="1.0" encoding="utf-8"?>
<CurrentSettingsPacket>
  <Date>2024-01-30T13:51:34</Date>
  <Settings>
    <SettingCurrent>
      <Id>Device.BootOrderLock.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.USBBoot.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.BootOnboardNetwork.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.Password.Password</Id>
      <Value>No System Password</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RecoveryUrl.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RecoveryBootstrapUrl.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.HttpsCert.Binary</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RegistrationId.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.TenantId.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>MDM.FriendlyName.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>MDM.TenantName.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.CpuAndIoVirtualization.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.OnboardWpbt.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.AssetTag.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardAudio.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardRadios.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.IRCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.FrontCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.RearCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.ProcessorSMT.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.CpuAndIoVirtualization.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.BootExternalMedia.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardCameras.Enable</Id>
      <Value>Unknown</Value>
    </SettingCurrent>
  </Settings>
  <LSV>0</LSV>
</CurrentSettingsPacket>

File Name: UEFISettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01

ASCII Output:

<?xml version="1.0" encoding="utf-8"?>
<CurrentSettingsPacket>
  <Date>2024-01-30T13:51:34</Date>
  <Settings>
    <SettingCurrent>
      <Id>Device.BootOrderLock.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.USBBoot.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.BootOnboardNetwork.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.Password.Password</Id>
      <Value>No System Password</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RecoveryUrl.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RecoveryBootstrapUrl.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.HttpsCert.Binary</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.RegistrationId.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.TenantId.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>MDM.FriendlyName.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>MDM.TenantName.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.CpuAndIoVirtualization.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.OnboardWpbt.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.AssetTag.String</Id>
      <Value/>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardAudio.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardRadios.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.IRCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.FrontCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Device.RearCamera.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci3.ProcessorSMT.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.CpuAndIoVirtualization.Enable</Id>
      <Value>Disabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.BootExternalMedia.Enable</Id>
      <Value>Enabled</Value>
    </SettingCurrent>
    <SettingCurrent>
      <Id>Dfci.OnboardCameras.Enable</Id>
      <Value>Unknown</Value>
    </SettingCurrent>
  </Settings>
  <LSV>0</LSV>
</CurrentSettingsPacket>


--------------000100080402000705020703--
