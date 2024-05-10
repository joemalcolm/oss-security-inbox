Received: (qmail 32392 invoked by uid 550); 11 May 2024 11:03:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5308 invoked from network); 10 May 2024 13:19:48 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeJYqyNIgeXaVxpk77B9HFzy83KjpbNxkBx4ASHzzl4Y12ZXgZR5J7+bcdTwRVdoey367ps8b7qXsnHOeFbRtP5V4BauQWGukdWFenfouMhOwRJCVMLcTM2VI/KjNrgNfsGTqKgMZA09eUQ/EGPEji26g2MFTnPmxl8ZZESGaGcoJY2ip/OETuSSDPzFTilQhuP2RFPdj+ONKQdqj+8Eyb+bb7hEDpQiWrL6bc+ZURvfSdspvy7SATmMJir3/eLb06WaICXQJ/ikSD8UDXjJeKUeCbiBTctPTBO7RzQ2ModkbNFBLZGj2EkgwtbdTXEl62RreXbvz9Gv3TXWrKEBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jztq/fLNN51DIQeSSRGWT+j8NiDFaYcUdzuaXfhLRY4=;
 b=Jn1poSr/BaCd+kgeK1DqJDufKdZUPHjPg6gJQFzbR2D6amrj0mS6R/3IS94tpz22NlD3qI9LOveHoqf6uFgs7GDbncHWuUs2um2yPpR90fUlxgbXjuxelUvV5iNgAsHtx26gLzcVL0RIE3LzncWP4Qt9kzbgXuRFY/ARLuI4+mp55wI89bDBmR0D3oTT1SiOn2fVeGt12g7HZpjShkA4VGSXuoXZCUnMa+gKhvSG03ur3s9XzsX/tDtHbZ251/iUmA5WTgaqj0p3ztIic8LxjRGAcpNLfkKDVKSuZZMkCISepgXUllcjhlvfDHEgHpynLVz0v6lZKKakefXAKtkYeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jztq/fLNN51DIQeSSRGWT+j8NiDFaYcUdzuaXfhLRY4=;
 b=A1LJnlxkYr9D4Bj6Q4n/pNx1aVCfMeI5ZqiJXRX7ugCeNL8v0SyxjP6UWtV72yublqztx8URu98m+nHVN62BT7eraMszO5AKT3NkZpIlh3GG98jeIxc5SbEMa4YBk/qfWxo+c4kP7MUFFhwwQxnpxNTzQxjph9IA2Ag3gJSevtBhIqRzHiAnsdlYo+zoBUc2bfuWdsIOcBDx9Hul1qS9mzkGIs0ZJJjZIqTlwjYqRNMt6XbwMqso3kLEihjhmN8xzDBdScs39CEvx0l2OViZNpBH2uUermNyTamNv+bh0GWeHpj04cGLTORhv+VjJvZ4YXw0tJGZOVgRDcPLq+Ha6g==
From: Corey Lopez <Corey.lopez09160587@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Microsoft Device Firmware Configuration Interface (DFCI) in
 Linux efivars directory
Thread-Index: AQHaotsJBSE+kIqJk0G2DerpSXAIRw==
Date: Fri, 10 May 2024 13:19:35 +0000
Message-ID:
 <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-tmn: [DMD0AtUNn3gi4nvuX3s4dBw4/kPq2yE3]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4903:EE_|SJ0PR03MB5712:EE_
x-ms-office365-filtering-correlation-id: a2fb8201-52ef-46ab-54cc-08dc70f3d662
x-microsoft-antispam:
 BCL:0;ARA:14566002|461199019|102099023|440099019|3412199016|3420499023|3430499023|1602099003;
x-microsoft-antispam-message-info:
 mNNRQ4390RtJ6W2h4KjcdICHJ1EXmaBfmelLAv6gUmSkBUdoptDKckftMiznmiHzpq75bjCGsJejbgQ6sNi+jT/LYoz2DLPOXRhfWzAhi2RJ+17h5ROaAxRP+4KPJPT2Sfn05vgw/8AOerfUf/r19g/OpUu7UZsuKXqslxQjaCAKsrDIt2Pi1fxrTbzEkXwsCEPzL3kTtKIDXO2ypwjENkKWfB4G/K9o5rKhOW5Zct89lrAHnt1Qy2/gM2EaEdgcQwGf02DaDHNqmBajIjmH0AUkpAvdgHcxglGi3WJ7dxvC90wIZmE8MbCknMlH0TgZPotN6ORf6oUhQRoTA6C20YSdP1RCAIrFcosLM4+39HqOTJGb25oOZ3oXpH+6cHx+VmCqB0T7UHNkHRZrYn+1JoVdJKLeK7N5W1+Tpcf4cOZd4rkdx43dAP6lK2NQG8TD6MPFj9NHntl5KTU3wlrCIxFVDvXfHdh6+JQ8+rkk77DIrzGoHVkFwxBFRelt6YZ4LV8QE3iQ28pMyeJfQ/jFHPDHFs7G1/bz+n2IH2WKLvfo6yWZl0CWB+H62tmhL+PrJjGK2Dolp96p5jzJoGFnzp5dTWOUnfN6Fd6EZyDVZL/0ggn4osXB7QxOXw+ds1CBxbxF10W72hLXVhYy+tHeAWG7KSMr7ns2j9N6+WnXsDM=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?ttrFbYPnH2LYM7lembIrTCbnbtpdN0q/A1aTOA6Ly2m/zZuV5bC3GmqLvn?=
 =?iso-8859-1?Q?UBTf2/1s+vupwO+SnRBFDR5qqJ3pDbTvg0ac06gSRSdFvFNf8U/LdUK2ub?=
 =?iso-8859-1?Q?VUfJ4NTCHnxZnR0GcL86U5aH7MvCNBLmolJzQUd+GgB6Kb9RYjSbxww8Q4?=
 =?iso-8859-1?Q?DXlV7OyCGva/i4cE/s+aeYmCsS6LfnBSBku1dthNS7O0xy/y5z0rN0TQi6?=
 =?iso-8859-1?Q?nlGFVwA0LK3TVZr2bISXipx9QrCrbUF0uKNkiiCAt3Jl2W4IFUFndEtZ+w?=
 =?iso-8859-1?Q?ZD9phoFVZJ5oMgy0Y0sOYXxqjOFndtv+wxlIZ7nkeUsiZbtpQvPdsYNatd?=
 =?iso-8859-1?Q?vuuu6j9NOc667yKYXo4iRnB4QGd13zeeu19lNEYZtf432FMjn1RT4ltoQ8?=
 =?iso-8859-1?Q?5A/Yv9nTkq1AqWlJ28k5jMuS1/lbfRDnrpau+eaCqkHnMb75WDIxqE7M5U?=
 =?iso-8859-1?Q?TirqeB2Gzkxe/M5gZWrmTl8aI/C5orAny9D1coJ1HFt55V4dlxt9NNNaNL?=
 =?iso-8859-1?Q?/7826EvoNIHUWIhaz2fP5bj0Dd5z5Lo9cKjSaxTP9PO2v5uljMGSE8SigE?=
 =?iso-8859-1?Q?e83rxlKC+HzQbH5cYsT7RtJLULVIObvklMQDybgkUslCcQ1eiE58AEkqK8?=
 =?iso-8859-1?Q?QcEUew3wadOCXHzigu15/ujrbrunIzITYMhUn2QB1ojzS91zRh0Z8pND2h?=
 =?iso-8859-1?Q?r8TYf5I1G/hG4Qx9JkZXykfySYrqrM7UCQ/hQZu8pxoF5hpf/nX/bgDDgM?=
 =?iso-8859-1?Q?H5Ocy3V1Gg+qhrJ5XME1ad7PuXWl4qtLC3AzLGv4SBUsDQ9LyvagsS6Cmv?=
 =?iso-8859-1?Q?yB+5f4UofC27uhd3HC9b+EQ0XC25nnm199KznPJVCagyRASA3aZdHksi3B?=
 =?iso-8859-1?Q?KoT/35npFRgfU6f4qGxG58ea1ASBeqvwh38aqgjys+Sfx3Fy4GCg4YF6wq?=
 =?iso-8859-1?Q?e41C61+RObrj/b9ty2ByyiXgH1yxY9tRRnaAfpSwG697+tmedAbVOwtMZ7?=
 =?iso-8859-1?Q?4u7OQWwbqgTgSGcMhEU6NWPjO92yN7uNTT7rn0xSnHrGLcpeSRbfOozEXJ?=
 =?iso-8859-1?Q?0GDX4UfD3+gaWJdOV9XTintOlpqRPLevPhx3x3yxsYuvDuhIYCOTlQVXcM?=
 =?iso-8859-1?Q?pHnZuKsSLDT8j2tGY1Qr2JH2Mcz5Tr0HPZVSnoeVi5CjDTXMdaF3uCUWNt?=
 =?iso-8859-1?Q?S0c5wtMUi6Z3iWf/s5KcKuSQJ1GFbcjw+l6lZ9zd0wBPGPMYoY+v3y1fT3?=
 =?iso-8859-1?Q?DXXHXdQD9NzO73lx6fUySxvdph7h0v5JdME0mwZrGfsm7KZTfJm6A9YHMn?=
 =?iso-8859-1?Q?flhN?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-685f7.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4903.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a2fb8201-52ef-46ab-54cc-08dc70f3d662
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2024 13:19:35.5659
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB5712
Subject: [oss-security] Microsoft Device Firmware Configuration Interface (DFCI) in Linux
 efivars directory

I have dual boot Windows 11 Home Edition and Debian based setup on my lapto=
p.

Distributor ID: Kali
Description:    Kali GNU/Linux Rolling
Release:        2024.1
Codename:       kali-rolling

After realizing a security breach on my Kali system I discovered /etc/netwo=
rk/interface
had the immutable attribute set while trying to restrict access using chmod=
. I decided to
investigate other files on my system with the immutable attribute set by ru=
nning this
command as root:

# find / -type f -exec lsattr {} + 2>/dev/null > immutable-list-find.txt

This led me the directory /sys/firmware/efi/efivars/ where I discovered efi=
 variables
pertaining Microsoft's Device Firmware Configuration Interface (DFCI). Micr=
osoft's
DFCI enables zero touch remote configuration of UEFI BIOS giving the abilit=
y to
manage BIOS settings and hardware. The DFCI allows for remote disabling or =
enabling
of cameras, microphones, radios, boot external media, bootstrapping an OS, =
cpu
virtualization, and I/O virtualization. According to Microsoft's github pag=
e, the zero
touch certificate is shared by all DFCI-enabled systems and does not need t=
o be injected
at manufacturing.

Microsoft advertises DFCI as a defense mechanism against rootkits, however =
it seems that it
is being used as a UEFI bootkit. According to Microsoft DFCI is not availab=
le for Windows 10
or 11 Home Edition. My Acer Aspire 3 15 has Windows 11 Home Edition, and wa=
s purchased
as a consumer product versus a commercial. This means that not only is ther=
e a capability that
DFCI can be implemented on a consumer product, but through a Linux based op=
erating system.

I will provide the ASCII output of each file that I found on my Kali Linux =
system from the
/sys/firmware/efi/efivars/ directory. I will not provide the entire hexdump=
 output to save space.
However, I will provide more if requested after my initial posting.=20

File Name: DfciDeviceIdentifier-4123a1a9-6f50-4b58-9c3d-56fc24c6c89e

ASCII output:

|....<?xml versio|
|n=3D"1.0" encoding|
|=3D"utf-8"?><UEFID|
|eviceIdentifierP|
|acket><Identifie|
|rs><Identifier><|
|Id>Manufacturer<|
|/Id><Value>Acer<|
|/Value></Identif|
|ier><Identifier>|
|<Id>Product Name|
|</Id><Value>Aspi|
|re A315-44P</Val|
|ue></Identifier>|
|<Identifier><Id>|
|Serial Number</I|
|d><Value>NXKSJAA|
|0044050439E3400<|
|/Value></Identif|
|ier></Identifier|
|s><DfciVersion>2|
|</DfciVersion></|
|UEFIDeviceIdenti|
|fierPacket>.|

File Name: DfciIdentityCurrent-de6a8726-05df-43ce-b600-92bd5d286cfd

(NOTE: something that stood out to me is the=20
Zero Touch ID: 0989C5F7EA3379388F79990875B23E031A5DA554)

ASCII Output:

|....<?xml versio|
|n=3D"1.0" encoding|
|=3D"utf-8"?><UEFII|
|dentityCurrentPa|
|cket><Certificat|
|es><Certificate>|
|<Id>User</Id><Va|
|lue>Cert not ins|
|talled</Value></|
|Certificate><Cer|
|tificate><Id>Use|
|r1</Id><Value>Ce|
|rt not installed|
|</Value></Certif|
|icate><Certifica|
|te><Id>User2</Id|
|><Value>Cert not|
| installed</Valu|
|e></Certificate>|
|<Certificate><Id|
|>Owner</Id><Valu|
|e>Cert not insta|
|lled</Value></Ce|
|rtificate><Certi|
|ficate><Id>ZeroT|
|ouch</Id><Value>|
|0989C5F7EA337938|
|8F79990875B23E03|
|1A5DA554</Value>|
|</Certificate></|
|Certificates></U|
|EFIIdentityCurre|
|ntPacket>.|

File Name: DfciPermissionCurrent-3a9777ea-0d9f-4b65-9ef3-7caa7c41994b

ASCII Output:

|....<?xml versio|
|n=3D"1.0" encoding|
|=3D"utf-8"?><Curre|
|ntPermissionsPac|
|ket Default=3D"1" |
|Delegated=3D"128">|
|<Date>2024-01-30|
|T13:51:08</Date>|
|<Permissions><Pe|
|rmissionCurrent>|
|<Id>Dfci.OwnerKe|
|y.Enum</Id><PMas|
|k>9</PMask><DMas|
|k>128</DMask></P|
|ermissionCurrent|
|><PermissionCurr|
|ent><Id>Dfci.Ztd|
|Key.Enum</Id><PM|
|ask>1</PMask></P|
|ermissionCurrent|
|><PermissionCurr|
|ent><Id>Dfci.Ztd|
|Unenroll.Enable<|
|/Id><PMask>0</PM|
|ask></Permission|
|Current><Permiss|
|ionCurrent><Id>D|
|fci.Ztd.Recovery|
|.Enable</Id><PMa|
|sk>0</PMask></Pe|
|rmissionCurrent>|
|</Permissions><L|
|SV>0</LSV></Curr|
|entPermissionsPa|
|cket>.|

File Name: DfciSettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01

ASCII Output:

|....<?xml versio|
|n=3D"1.0" encoding|
|=3D"utf-8"?><Curre|
|ntSettingsPacket|
|><Date>2024-01-3|
|0T13:51:34</Date|
|><Settings><Sett|
|ingCurrent><Id>D|
|evice.BootOrderL|
|ock.Enable</Id><|
|Value>Disabled</|
|Value></SettingC|
|urrent><SettingC|
|urrent><Id>Devic|
|e.USBBoot.Enable|
|</Id><Value>Enab|
|led</Value></Set|
|tingCurrent><Set|
|tingCurrent><Id>|
|Dfci.BootOnboard|
|Network.Enable</|
|Id><Value>Disabl|
|ed</Value></Sett|
|ingCurrent><Sett|
|ingCurrent><Id>D|
|evice.Password.P|
|assword</Id><Val|
|ue>No System Pas|
|sword</Value></S|
|ettingCurrent><S|
|ettingCurrent><I|
|d>Dfci.RecoveryU|
|rl.String</Id><V|
|alue /></Setting|
|Current><Setting|
|Current><Id>Dfci|
|.RecoveryBootstr|
|apUrl.String</Id|
|><Value /></Sett|
|ingCurrent><Sett|
|ingCurrent><Id>D|
|fci.HttpsCert.Bi|
|nary</Id><Value |
|/></SettingCurre|
|nt><SettingCurre|
|nt><Id>Dfci.Regi|
|strationId.Strin|
|g</Id><Value /><|
|/SettingCurrent>|
|<SettingCurrent>|
|<Id>Dfci.TenantI|
|d.String</Id><Va|
|lue /></SettingC|
|urrent><SettingC|
|urrent><Id>MDM.F|
|riendlyName.Stri|
|ng</Id><Value />|
|</SettingCurrent|
|><SettingCurrent|
|><Id>MDM.TenantN|
|ame.String</Id><|
|Value /></Settin|
|gCurrent><Settin|
|gCurrent><Id>Dev|
|ice.CpuAndIoVirt|
|ualization.Enabl|
|e</Id><Value>Ena|
|bled</Value></Se|
|ttingCurrent><Se|
|ttingCurrent><Id|
|>Dfci3.OnboardWp|
|bt.Enable</Id><V|
|alue>Enabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci3.A|
|ssetTag.String</|
|Id><Value /></Se|
|ttingCurrent><Se|
|ttingCurrent><Id|
|>Dfci.OnboardAud|
|io.Enable</Id><V|
|alue>Enabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci.On|
|boardRadios.Enab|
|le</Id><Value>En|
|abled</Value></S|
|ettingCurrent><S|
|ettingCurrent><I|
|d>Device.IRCamer|
|a.Enable</Id><Va|
|lue>Disabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Device.|
|FrontCamera.Enab|
|le</Id><Value>Di|
|sabled</Value></|
|SettingCurrent><|
*
|Id>Device.RearCa|
|mera.Enable</Id>|
|<Value>Disabled<|
|/Value></Setting|
|Current><Setting|
|Current><Id>Dfci|
|3.ProcessorSMT.E|
|nable</Id><Value|
|>Disabled</Value|
|></SettingCurren|
|t><SettingCurren|
|t><Id>Dfci.CpuAn|
|dIoVirtualizatio|
|n.Enable</Id><Va|
|lue>Disabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci.Bo|
|otExternalMedia.|
|Enable</Id><Valu|
|e>Enabled</Value|
|></SettingCurren|
|t><SettingCurren|
|t><Id>Dfci.Onboa|
|rdCameras.Enable|
|</Id><Value>Unkn|
|own</Value></Set|
|tingCurrent></Se|
|ttings><LSV>0</L|
|SV></CurrentSett|
|ingsPacket>.|

File Name: UEFISettingsCurrent-d41c8c24-3f5e-4ef4-8fdd-073e1866cd01

ASCII Output:

|....<?xml versio|
|n=3D"1.0" encoding|
|=3D"utf-8"?><Curre|
|ntSettingsPacket|
|><Date>2024-01-3|
|0T13:51:34</Date|
|><Settings><Sett|
|ingCurrent><Id>D|
|evice.BootOrderL|
|ock.Enable</Id><|
|Value>Disabled</|
|Value></SettingC|
|urrent><SettingC|
|urrent><Id>Devic|
|e.USBBoot.Enable|
|</Id><Value>Enab|
|led</Value></Set|
|tingCurrent><Set|
|tingCurrent><Id>|
|Dfci.BootOnboard|
|Network.Enable</|
|Id><Value>Disabl|
|ed</Value></Sett|
|ingCurrent><Sett|
|ingCurrent><Id>D|
|evice.Password.P|
|assword</Id><Val|
|ue>No System Pas|
|sword</Value></S|
|ettingCurrent><S|
|ettingCurrent><I|
|d>Dfci.RecoveryU|
|rl.String</Id><V|
|alue /></Setting|
|Current><Setting|
|Current><Id>Dfci|
|.RecoveryBootstr|
|apUrl.String</Id|
|><Value /></Sett|
|ingCurrent><Sett|
|ingCurrent><Id>D|
|fci.HttpsCert.Bi|
|nary</Id><Value |
|/></SettingCurre|
|nt><SettingCurre|
|nt><Id>Dfci.Regi|
|strationId.Strin|
|g</Id><Value /><|
|/SettingCurrent>|
|<SettingCurrent>|
|<Id>Dfci.TenantI|
|d.String</Id><Va|
|lue /></SettingC|
|urrent><SettingC|
|urrent><Id>MDM.F|
|riendlyName.Stri|
|ng</Id><Value />|
|</SettingCurrent|
|><SettingCurrent|
|><Id>MDM.TenantN|
|ame.String</Id><|
|Value /></Settin|
|gCurrent><Settin|
|gCurrent><Id>Dev|
|ice.CpuAndIoVirt|
|ualization.Enabl|
|e</Id><Value>Ena|
|bled</Value></Se|
|ttingCurrent><Se|
|ttingCurrent><Id|
|>Dfci3.OnboardWp|
|bt.Enable</Id><V|
|alue>Enabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci3.A|
|ssetTag.String</|
|Id><Value /></Se|
|ttingCurrent><Se|
|ttingCurrent><Id|
|>Dfci.OnboardAud|
|io.Enable</Id><V|
|alue>Enabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci.On|
|boardRadios.Enab|
|le</Id><Value>En|
|abled</Value></S|
|ettingCurrent><S|
|ettingCurrent><I|
|d>Device.IRCamer|
|a.Enable</Id><Va|
|lue>Disabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Device.|
|FrontCamera.Enab|
|le</Id><Value>Di|
|sabled</Value></|
|SettingCurrent><|
*
|Id>Device.RearCa|
|mera.Enable</Id>|
|<Value>Disabled<|
|/Value></Setting|
|Current><Setting|
|Current><Id>Dfci|
|3.ProcessorSMT.E|
|nable</Id><Value|
|>Disabled</Value|
|></SettingCurren|
|t><SettingCurren|
|t><Id>Dfci.CpuAn|
|dIoVirtualizatio|
|n.Enable</Id><Va|
|lue>Disabled</Va|
|lue></SettingCur|
|rent><SettingCur|
|rent><Id>Dfci.Bo|
|otExternalMedia.|
|Enable</Id><Valu|
|e>Enabled</Value|
|></SettingCurren|
|t><SettingCurren|
|t><Id>Dfci.Onboa|
|rdCameras.Enable|
|</Id><Value>Unkn|
|own</Value></Set|
|tingCurrent></Se|
|ttings><LSV>0</L|
|SV></CurrentSett|
|ingsPacket>.|

I did discover loop devices on my system that I could not remove with the=20
losetup command. I had to manually remove them with the rm -f command from=
=20
the /dev/disks directory. Also, I ran the lsof command, which helped me dis=
cover=20
the type of file systems that were being used. This prompted me to use apt =
purge=20
to remove Gnome Virtual File System from my laptop.=20

# lsof /dev/loop*

I received this in response:

can't stat() fuse.gvfsd-fuse file system /run/user/1000/gvfs
can't stat() fuse.portal file system /run/user/1000/doc

This should be enough to give others places to look to determine if they ha=
ve been
infected, however I will be more than happy to provide more if needed.=20

Sources:

https://microsoft.github.io/mu/dyn/mu_feature_dfci/DfciPkg/Docs/Dfci_Featur=
e/
https://learn.microsoft.com/en-us/windows/client-management/mdm/uefi-csp=
