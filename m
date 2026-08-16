X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/16/6
Message-ID: <20260816165945.5b19e92a@gmail.com>
Date: Sun, 16 Aug 2026 16:59:45 -0400
From: Aaron Rainbolt <arraybolt3@...il.com>
To: Erica Windisch <erica@...disch.us>
Cc: oss-security@...ts.openwall.com
Subject: Re: Fwd: OpenZFS Linux open zpool manipulation and escapes via unprivileged userns
Content-Type: text/plain; charset=utf-8

On Sun, 16 Aug 2026 14:32:26 -0400
Erica Windisch <erica@...disch.us> wrote:

> Erica
> 
> 
> ---------- Forwarded message ---------
> From: Erica Windisch <erica@...disch.us>
> Date: Sun, Aug 16, 2026 at 2:31 PM
> Subject: OpenZFS Linux open zpool manipulation and escapes via
> unprivileged userns
> To: <fulldisclosure@...lists.org>
> 
> 
> I am hopeful that upstream patches and remediation guidance will be
> available soon. I have been sitting on these for a bit, and have run
> this through AI services hosted in Singapore and the United States,
> and had notified CERT on 8/12/2026. In order to minimize the risk of
> asymmetric knowledge of these threats being used against defenders, I
> am opting for full-disclosure.
> 
> Cheers from HOPE
> 
> --Bird

Holy AI agent braindump, Batman. Is there perhaps a standard
vulnerabiilty report version of this? Or a GitHub repo that can be
cloned where each different "piece" of this is in a separate file to
make it a bit more manageable?

I'm certain AI-generated vuln reports are going to be necessary on
this mailing list, but it would be really nice if things like this
could be cleaned up first so that people don't have to wade through an
ocean of text of dubious accuracy.

--
Aaron

> ## Report metadata
> 
> - **Product:** OpenZFS on Linux (`spl.ko` and `zfs.ko`; out-of-tree
> and not part of the Linux kernel source tree)
> - **OpenZFS revision audited:**
> `9b7642df931a765509403318553f2910daf71305` (development version
> `2.4.99-1`, commit title "Harden recv record validation")
> - **Linux validation kernel:** `7.2.0-rc3-00275-gaf5e34a41cd6`
> - **Validation environments:** disposable QEMU guest with generic
> KASAN and `CONFIG_KASAN_VMALLOC=y`; a stock IncusOS appliance guest
> for deployment-level authorization/volume-swap validation; disposable
> QEMU appliance VMs for Proxmox VE, TrueNAS SCALE, and Unraid dynamic
> reachability
>   testing. Release-mode OpenZFS modules unless stated otherwise.
> - **Research dates:** 2026-07-17 through 2026-07-25
> - **Report updated:** 2026-07-25
> - **Reporter:** Erica Windisch
> - **Tracker umbrella:** [issue #26](
> https://github.com/ewindisch/linux-research-tracker/issues/26)
> 
> All kernel execution used disposable QEMU/cloud-hypervisor guests —
> the KASAN
> research guest or the stock IncusOS appliance guest. Host-side work
> was limited
> to building, offline image construction, and driving those guests.
> 
> ### Revision notes
> 
> - **2026-07-25 (validation-chain results):** OZ-3c and OZ-6 move from
>   **LIKELY** to **VALIDATED** with dynamic triggers in the KASAN guest
>   (OZ-3c: UBSAN array-index-out-of-bounds at `zfs_replay.c:115`;
> OZ-6: KASAN null-ptr-deref in `vdev_is_concrete` and
> slab-out-of-bounds in `spa_ld_log_sm_cb`). QNAP QZFS static analysis
> validates Z1/Z2/dnode-bonus S3
>   and gang overrun, and BLOCKS log-spacemap S4 (feature absent). The
> upstream
>   patch audit confirms every OZ finding remains **UNFIXED** at
> upstream master
>   HEAD `3020c18c` (2026-07-24); only OZ-7 has an open, contested PR
> (#18620).
>   Full audit:
> [`research/upstream-patch-audit.md`](../research/upstream-patch-audit.md).
> - **2026-07-25 (OZ-4 on Proxmox VE):** the Proxmox VE 8.x OZ-4 cell is
> upgraded
>   from provisional to a confirmed dynamic verdict. On `6.8.12-37-pve`
> / OpenZFS `2.2.10-pve1`, importing the armed dnode-bonus pool
> (`dn_bonuslen= 0x400`, `zfs-77-d77-s3v2.img`) **from inside the
> delegated LXC container** (CT100 with the OZ-1 verified `/dev/zfs`
> passthrough) fired the `dbuf_read_bonus` overflow on `spa_tryimport →
> spa_load → spa_ld_trusted_config` and crashed the kernel (NULL-deref
> in `strcmp` during
>   `vdev_open_children_impl`; host-side corroboration showed SLUB
> `LIST_POISON`
>   heap corruption in `dbuf_sync_list`). OZ-4 is therefore **VIABLE
> from the delegated/privileged container** and **BLOCKED by default**
> (default unprivileged LXC has no `/dev/zfs`). A container→root shell
> was not reproduced on the stock appliance (release kernel faults
> deterministically;
>   no KASLR leak). Full verdict and evidence:
>   `linux-research/.fleet-coord/oz4-proxmox-verdict.md`;
> 
> `linux-research/appliance-harness/proxmox-ve/runs/20260725T150254Z/evidence/`.
> - **2026-07-25 (OZ-4 on Unraid):** the Unraid 7.3.0 OZ-4 cell is
> upgraded from
>   provisional to a confirmed dynamic verdict. On `6.18.29-Unraid` /
> OpenZFS `2.4.1-1`, importing the inflated-bonus pool
> (`dn_bonuslen=0x1000`, `zfs-77-d77-s3v3.img`) from a `--privileged`
> Docker container fails `insufficient replicas` while the structurally
> identical clean control imports ONLINE; the kernel survives (silent
> heap corruption, no panic/Oops).
>   OZ-4 is therefore **VIABLE from `--privileged`** and **BLOCKED** by
> default
>   and `--device /dev/zfs` (no `/dev/zfs` / no `CAP_SYS_ADMIN`). A
> container→root
>   shell was not pursued (requires heap grooming + KASLR bypass). Full
> verdict
>   and evidence: `linux-research/.fleet-coord/oz4-unraid-verdict.md`;
>   `linux-research/appliance-harness/unraid/runs/20260725T150925Z/evidence/`.
> - **2026-07-25 (OZ-4 OCI delivery on IncusOS):** an OCI image
>   (`oz4-delivery:latest`) carrying the armed pool (`d77.img`) was
> built with podman, repacked as an Incus image, and launched as a
> default unprivileged Incus container on IncusOS `202607192224`
> (OpenZFS `2.4.3-1`). The container
>   received `/dev/zfs` and the ioctls were authorized (OZ-1
> reachability **VIABLE**), but the host kernel could not open the file
> vdev at the container-relative path (`/opt/d77.img`), so the OZ-4
> overflow never fired (**BLOCKED** for the in-container E2E fire).
> IncusOS's shell-less design removes the host-side bind-mount escape
> hatch that made the fire possible on
>   Proxmox VE. Full verdict and evidence:
>   `linux-research/.fleet-coord/oz4-oci-incusos-verdict.md`;
>   `linux-research/incusos-spike/runs/20260725-oz4-oci/evidence/`.
> - **2026-07-25 (OZ-4 OCI delivery on TrueNAS SCALE):** the same OCI
> image (`oz4-delivery:latest`) was launched as a default unprivileged
> Incus container on TrueNAS SCALE 25.04.2.4. The entrypoint auto-fired
> the import ioctl, but the host kernel could not open the
> container-relative file vdev (`/opt/d77.img`), so the OZ-4 overflow
> never fired (**BLOCKED**). This refines the prior TrueNAS host-side
> **VIABLE** verdict: the overflow is reachable from a host path, but
> not from a self-contained OCI image in a default container. Full
> verdict and evidence:
> `linux-research/.fleet-coord/oz4-oci-truenas-verdict.md`;
> 
> `linux-research/appliance-harness/truenas-scale/runs/20260725T190000Z/evidence/`.
> - **2026-07-25 (OZ-4 on TrueNAS):** the Dynamically tested appliances
> table gains an **OZ-4 column**. TrueNAS SCALE 25.04.2.4 (running
> OpenZFS `2.3.0-1`) is **VIABLE** for OZ-4 from the default
> unprivileged container: the armed dnode-bonus pool imported ONLINE
> with no error erevent (oversized
>   `dn_bonuslen` accepted, not rejected) on the production non-KASAN
> kernel, and the same image fired `Write of size 1024 in
> dbuf_read_impl` via `spa_tryimport` under KASAN. The kernel survives
> the corruption; a container→root shell is not demonstrated
> (neighbor-lottery + KASLR, as in the 77b campaign). Proxmox VE and
> Unraid OZ-4 cells are marked **BLOCKED** by
>   default pending their sibling fleet validation tasks. Full verdict
> and evidence path:
> `linux-research/.fleet-coord/oz4-truenas-verdict.md`.
> - **2026-07-25 (OZ-4 OCI delivery, round 2 — VALIDATED on TrueNAS
> SCALE and Unraid):** the malicious-OCI-image vector is upgraded from
> **BLOCKED** to **VALIDATED** on two appliances. The round-1 blocker
> was that the host kernel's `vdev_file_open` resolves vdev paths in
> the host mount namespace, so a container-internal `/opt/d77.img` is
> never opened. Round 2 defeats this
>   with an **identical-path host bind mount** (the image entrypoint
> stages its
>   embedded armed pool onto a bind-mounted host path visible at the
> same absolute path in both namespaces, then imports from that path).
> On **TrueNAS
>   SCALE 25.04.2.4** the vector fires from a **default unprivileged**
> Incus container (no `security.privileged`, no explicit device add —
> only the default `/dev/zfs`, an identical-path `disk` bind, and a
> `1777` host staging
>   path): the armed import **panicked the production kernel** (GPF in
>   `__kmalloc` on the `spa_tryimport → spa_config_generate` path,
> crashing task
>   `Comm: zpool` as the container's mapped uid in
> `ZFS_IOC_POOL_TRYIMPORT`), while the structurally identical clean
> control imported ONLINE. On **Unraid
>   7.3.0** the image-carried payload fires via `docker run
> --privileged` (the required and sufficient capability); the negative
> control showed the bind mount is not even required under Unraid's
> `vfs` storage driver. The Unraid result is **expected behavior** — a
> `--privileged` container holds full host
>   capabilities by design — and is retained for matrix completeness
> only; it is
>   not scored as a finding. The TrueNAS round-2 fire is the significant
> result,
>   but note its two deployment concessions: an identical-path host
> bind and a world-writable host staging path must be granted to the
> container (as an app
>   manifest's hostPath grant would provide). The Unraid kernel survives
> (silent
>   corruption → `insufficient replicas`); the TrueNAS
>   crash is a **reliable image-delivered container→host-kernel DoS** —
> no heap
>   grooming required. IncusOS remains **BLOCKED** for this vector
> (shell-less appliance; no host bind-mount escape hatch). Full
> verdicts and evidence:
> `linux-research/.fleet-coord/oz4-oci-truenas2-verdict.md`,
> `linux-research/.fleet-coord/oz4-oci-unraid-verdict.md`;
> 
> `linux-research/appliance-harness/truenas-scale/runs/20260725T193000Z/evidence/`,
>   `linux-research/appliance-harness/unraid/runs/20260725T194343Z/evidence/`.
> - **2026-07-26 (OZ-4 OCI on IncusOS, round 2 — VALIDATED with ZERO
> host-side setup):** IncusOS flips from the fleet's only **BLOCKED** to
> **VALIDATED**,
>   and the malicious-OCI-image vector now has a no-setup fire. The
> round-1 blocker (host kernel resolves vdev paths in the host mount
> namespace; shell-less appliance precludes an admin bind mount) is
> defeated **without any bind**: the container's own rootfs necessarily
> exists on the host at the
>   predictable path
> `/var/lib/incus/storage-pools/local/containers/<ct>/rootfs/`,
>   so the image's payload at `/opt/d77.img` is host-resolvable by
> construction.
>   A malicious OCI image launched as a **default unprivileged**
> container (default profile only — no `security.privileged`, no device
> add, no bind) carries a static raw `ZFS_IOC_POOL_TRYIMPORT` PoC
> (hand-packed nvlist, libzfs bypassed;
> `linux-research/incusos-spike/oz4-tryimport.c`, zg-poolop.c
>   lineage) pointed at that host path; the ioctl is issued by
> **non-root uid 1000**, authorized via an image-controlled file
> capability (`cap_sys_admin+ep` on the payload binary — an attacker
> image property, not
>   an admin concession; verified differentially: cap cleared →
> `EPERM`). The armed import **wedges the host kernel's ZFS load path
> and storage stack** (`incusd` unresponsive, ioctl never returns;
> reproduced on a fresh kernel),
>   while the structurally identical clean control imports in <1s.
> Negative controls (wrong path, nonexistent path, cleared cap) all
> fail as expected. On this kernel the overflow surfaces as a
> **wedge/storage-DoS** rather than
>   TrueNAS's instant GPF-panic (heap-layout dependent); no root shell
> is claimed. Attacker preconditions: get the victim to launch the
> image as a default container; knowledge of the container name;
> nothing else. Full verdict and evidence:
>   `linux-research/.fleet-coord/oz4-oci-incusos2-verdict.md`;
>   `linux-research/incusos-spike/runs/20260726-oz4-oci2/evidence/`.
> - **2026-07-26 (OZ-4 OCI on TrueNAS SCALE, round 3 — VALIDATED with
> ZERO host-side setup, kernel panic):** the zero-wire rootfs-path
> vector fires on
>   TrueNAS SCALE 25.04.2.4 as well, upgrading round 2's
> concession-laden fire.
>   A malicious OCI image launched as a **default unprivileged** Incus
> container
>   (dir storage backend, default profile only — no privileged flag, no
> device add, no bind, no host shell) carries the armed pool at
> `/opt/d77.img`, a static raw-ioctl PoC (`oz4ti`,
> zg-poolop/xpl-107-poolop lineage), and a **NATIVE-encoded** config
> nvlist naming the host-side rootfs path
> 
> (`/var/lib/incus/storage-pools/default/containers/<name>/rootfs/opt/d77.img`,
>   fully derivable from appliance defaults + the attacker-chosen
> container name). The import is issued by a **non-root** nested-userns
> user (host `UID: 2147001001`). The armed import **panicked the
> production kernel** (GPF in `__kmalloc` on `spa_tryimport → spa_load →
>   spa_ld_load_special_directories`, corrupted SLUB freelist; crashing
> task `Comm: oz4ti`), while the structurally identical clean control
> imported `rc=0` / LOADED. Key mechanism details: the raw ioctl
> removes the libzfs userspace-stat gate, and the config must be
> `NV_ENCODE_NATIVE` (the kernel decodes native only; hand-rolled XDR
> is rejected `EFAULT`). This is a fully
>   self-contained, image-delivered, **non-root container → host-kernel
> panic**
>   — no heap grooming required; turnkey root shell not demonstrated.
> Full verdict and evidence:
>   `linux-research/.fleet-coord/oz4-oci-truenas3-verdict.md`;
> 
> `linux-research/appliance-harness/truenas-scale/runs/20260726T045000Z/evidence/`;
>   PoC `linux-research/vulnlib/tools/oz4-tryimport.c` + `genconfig.c`.
> - **2026-07-25 (RHEL evaluation):** adds the RHEL 10.2
> STIG/FIPS/SELinux deployment section under Dynamically tested
> appliances: OZ-1/OZ-2 are **blocked** there — primarily by the
> OpenZFS 2.2.10 kernel credential check (`EINVAL` for
> namespace-local-`CAP_SYS_ADMIN` callers), with the SELinux
> `container_t` → `/dev/zfs` gate (`container_use_devices=off`,
> toggle-verified), `fapolicyd`, DAC, device-cgroup, and STIG mount
> options as layered controls; includes the "how SELinux does and does
> not prevent" analysis and notes that OZ-3+ parser findings were not
> validated on 2.2.10 (version gap; no import/mount delivery path).
> - **2026-07-25 (structural consolidation).** The OZ-1→OZ-4
>   chain, the IncusOS volume-swap, the `/dev/zfs` upstream-`0666`
> policy argument, and the appliance verdicts are each stated **once**
> and cross-referenced, instead of retold across the summary,
> deployment, CVSS, and
>   per-finding sections. **CVSS posture fix:** the base-score tables
> now contain
>   one row per independent root cause; per-appliance and
> delegated/privileged variations are deployment *preconditions* and
> are moved to [Environmental
> metrics](#deployment-environmental-modifiers). All v3.1 and v4.0
> vectors recomputed with the `cvss` Python library (v3.6); published
> scores match. No technical claims changed.
> - **2026-07-25:** Unraid 7.3.0 harness `pivot_root` failure resolved
>   (initramfs rootfs, parent-mount workaround). `--device /dev/zfs`
> alone is **blocked** for OZ-1 (Docker default caps omit
> `CAP_SYS_ADMIN` → `EPERM`, recorded as a 0.0 honest negative);
> `--privileged` reproduces OZ-1. QNAP QuTS hero assessment updated:
> QZFS fork diverged ~2020; Z1/Z2/dnode-bonus-S3
>   likely applicable, log-spacemap/gang uncertain.
> - **2026-07-24:** TrueNAS SCALE 25.04.2.4 and Proxmox VE 8.x dynamic
> OZ-1/OZ-2
>   verdicts; CVSS v4.0 candidate vectors added; headline elevated to
> state the
>   unprivileged container → host uid-0 shell.
> 
> ## Summary
> 
> Two interacting groups of defects, both confirmed:
> 
> 1. **Authorization (OZ-1, OZ-2).** On Linux, OpenZFS administrative
> ioctl policies accept `CAP_SYS_ADMIN` in the caller's *own* user
> namespace, and pool-level handlers omit the dataset zone/delegation
> visibility gate. With a
>    reachable `/dev/zfs` and namespace-local `CAP_SYS_ADMIN`, an
> unprivileged user or container can invoke host-pool operations. Vdev
> opens can additionally occur without enforcing the caller's
> filesystem or device-node
>    DAC permissions.
> 2. **Parsers (OZ-3…OZ-8).** Multiple import, replay, and
> metadata-read paths trust attacker-controlled on-disk lengths,
> indices, or graph structure. Confirmed outcomes include heap/vmalloc
> out-of-bounds writes, a controlled
>    heap overflow, a kernel stack overflow, unbounded fatzap
> traversal, and an
>    uninterruptible SPL cache-destroy hang.
> 
> The authorization defects materially change the threat model for the
> parser findings: paths normally treated as administrator-only import
> or pool-management
> surfaces become reachable from an unprivileged user namespace when
> `/dev/zfs` is
> exposed. This was reproduced in the KASAN guest and, for the
> pool-level authorization and cross-tenant dataset-replacement issues,
> on stock IncusOS.
> 
> ### Key messages
> 
> - **CISA / national CSIRTs:** Local, low-privilege container-to-host
> escape on
>   systems that expose `/dev/zfs` to unprivileged containers whose
> tenants can
>   create nested user namespaces to obtain namespace-local
> `CAP_SYS_ADMIN`. The
>   demonstrated uid-0 shell was obtained in a research VM with
>   KASLR and SLUB hardening disabled; the same authorization flaw is
> confirmed on
>   stock IncusOS and on TrueNAS SCALE 25.04.2.4, where it enables
> cross-tenant
>   storage compromise without memory corruption. Proxmox VE and Unraid
> default
>   containers do **not** expose `/dev/zfs`; on Unraid, `--device
> /dev/zfs` alone
>   also does **not** expose OZ-1 (Docker omits `CAP_SYS_ADMIN`), and
> `--privileged`
>   is required. The OZ-1 flaw itself is present and reachable on
> Unraid 7.3.0 from a non-root nested user namespace. Both CVSS v3.1
> and v4.0 rate the demonstrated chain High.
> - **OpenZFS / kernel developers:** The root cause is not a missing
> capability
>   check but use of namespace-local `CAP_SYS_ADMIN` as authority over
> host-pool
>   operations, combined with missing caller-DAC enforcement on vdev
> opens and several unvalidated on-disk parser paths. Fixes must address
> authorization and
>   input validation independently; changing the host `/dev/zfs` mode
> alone is insufficient.
> - **Systems operators:** Hardening `/dev/zfs` to `0660` or hiding it
> from containers is defense-in-depth, not a substitute for correct
> in-kernel authorization. Audit every container's device-cgroup
> policy, capability set,
>   and in-node `/dev/zfs` presence, and restrict the ZFS character
> major/minor
>   until patches ship.
> 
> OpenZFS on Linux is an out-of-tree kernel module. Security ownership
> and CVE decisions belong with the OpenZFS project and its
> vendors/CNA, not the Linux kernel CVE team. OpenZFS also has a
> broader practical surface than a pure filesystem: it combines
> filesystem code with pool and volume management, consumes file and
> block-device paths as vdevs, exposes zvol block devices, and
> can attach, replace, and mirror those devices — closer in deployment
> terms to
> the block-path/volume-management role of LVM/device-mapper than to
> parsing a filesystem only after `mount(2)`.
> 
> ## Glossary
> 
> | Term | Meaning in this report |
> |---|---|
> | **Initial (host) user namespace** | The root user namespace of the
> host. Capabilities held here are real host privileges. |
> | **Child / nested user namespace** | A user namespace created by a
> process (e.g., with `unshare -Ur`). UIDs and capabilities inside it
> are mapped and valid only within that namespace. |
> | **`CAP_SYS_ADMIN` (initial namespace)** | The real host
> administrative capability. A process holding it in the initial user
> namespace can perform privileged host operations. |
> | **Namespace-local `CAP_SYS_ADMIN`** | `CAP_SYS_ADMIN` held only
> inside a child user namespace. It does **not** confer host
> administrative authority. A non-root user can obtain it by creating a
> user namespace and mapping themselves to uid 0 inside it. |
> | **The OZ-1 defect** | OpenZFS's `zfs_secpolicy_config()` uses
> `ns_capable(cr->user_ns, CAP_SYS_ADMIN)`, which accepts
> namespace-local `CAP_SYS_ADMIN` as authority for host-pool
> operations. The correct check is `CAP_SYS_ADMIN` in the **initial**
> user namespace (or an equivalent host-level authorization check). |
> | **Why `--device /dev/zfs` alone is blocked in Docker** | Docker's
> default capability set omits `CAP_SYS_ADMIN` even in the container's
> user namespace, so the OpenZFS ioctl fails with `EPERM`.
> `--privileged` (or `--cap-add SYS_ADMIN`) grants the capability and
> reproduces OZ-1. |
> 
> ## Findings and validation status
> 
> **Validation labels:** **VALIDATED** = dynamically reproduced with a
> tested PoC; **LIKELY** = source-confirmed or architecturally
> supported but no isolated
> dynamic trigger yet; **BLOCKED** = investigated and found not
> applicable or refuted.
> 
> | ID | Finding | Status | Demonstrated consequence | Validation |
> |---|---|---|---|---|
> | OZ-1 | Linux user-namespace authorization accepted for pool-level
> ioctls; no pool visibility/zone gate | **Confirmed dynamically and
> end to end** | Host-pool freeze/destroy and channel-program access
> from userns/container root | **VALIDATED** |
> | OZ-2 | Kernel-side vdev open does not enforce caller DAC;
> `VDEV_ATTACH` mirrors writes into a foreign zvol | **Confirmed
> dynamically** | Cross-tenant disk corruption and attacker-controlled
> content injection | **VALIDATED** |
> | OZ-3a | ZIL `lrc_reclen` 64-to-32-bit truncation before full-width
> `memcpy` | **Confirmed dynamically** | KASAN slab OOB read of
> 4,294,967,360 bytes; fail-fault during replay | **VALIDATED** |
> | OZ-3b | Hole-blkptr `TX_WRITE` length reaches unchecked zero-fill |
> **Confirmed dynamically** | KASAN vmalloc OOB write of 67,108,864
> bytes | **VALIDATED** |
> | OZ-3c | `zfs_replay_xvattr` trusts `lr_attr_masksize` for a fixed
> stack array | **Confirmed dynamically** | UBSAN
> array-index-out-of-bounds at `zfs_replay.c:115` (`index 3 is out of
> range for type 'uint32_t [3]'`) at mount; kernel panic |
> **VALIDATED** | | OZ-4 | Dnode bonus length copied into a fixed-size
> bonus dbuf | **Confirmed dynamically; root-shell exploit demonstrated
> on the research configuration** | Controlled linear heap overflow,
> `pipe_buffer` arbitrary read/write, uid-0 shell; KASLR-on production
> chain not completed | **VALIDATED** |
> | OZ-5a | Gang-block tree has no runtime depth bound | **Confirmed
> dynamically** | Stack-guard fault and kernel panic with a depth-2048
> chain | **VALIDATED** |
> | OZ-5b | Gang leaf physical sizes can exceed the leader buffer |
> **Confirmed dynamically** | Repeated KASAN writes 128 KiB past a 128
> KiB ARC buffer | **VALIDATED** |
> | OZ-6 | Log-spacemap replay trusts vdev IDs and metaslab indices |
> **Confirmed dynamically** | KASAN null-ptr-deref in `vdev_is_concrete`
> (invalid vdev ID) and KASAN slab-out-of-bounds in `spa_ld_log_sm_cb`
> (OOB `vdev_ms[]` index) at writable import | **VALIDATED** |
> | OZ-7 | fatzap `la_next` is not runtime-bounded and cycles are not
> detected | **Confirmed dynamically** | KASAN heap OOB access/write
> and an in-kernel infinite loop | **VALIDATED** |
> | OZ-8 | SPL cache destroy cancels no grow work and waits on an
> unwoken waitqueue | **Confirmed dynamically** | Permanent
> uninterruptible sleep during cache destruction | **VALIDATED** |
> 
> The earlier hypothesis of an ACL count-truncation information leak was
> **refuted** (**BLOCKED**): the byte-bound check at
> `module/os/linux/zfs/zfs_acl.c:615-618` bounds the read. It is
> intentionally excluded as a vulnerability.
> 
> ### Lifecycle classification
> 
> "Mount-time" below means activation or replay associated with
> mounting a ZFS filesystem dataset. It does not include `zpool
> import`, zvol minor creation, pool-management ioctls, or later
> filesystem access.
> 
> | ID | Trigger phase | VFS mount required? | Classification |
> |---|---|---|---|
> | OZ-1 | Runtime `/dev/zfs` pool-control and channel-program ioctls |
> **No** | Authorization failure, not a mount-time image bug |
> | OZ-2 | Pool create and runtime vdev open/attach/mirror operations |
> **No** | Block-path and volume-management authorization failure |
> | OZ-3a, OZ-3b | ZIL replay | **Mixed** | Dataset replay is
> mount-associated; zvol replay can occur during import/minor creation
> without a VFS mount |
> | OZ-3c | Filesystem-dataset ZIL xvattr replay | **Normally yes** |
> Mount/replay-time parser issue in the identified route |
> | OZ-4 | Pool import or a later dnode bonus read | **No in the
> demonstrated chain** | Demonstrated during import before any dataset
> mount | | OZ-5 | Gang-block read | **No inherent requirement** | Can
> trigger during import if pool metadata uses the gang block;
> demonstrated file-data route triggered on post-mount read |
> | OZ-6 | Writable pool import and log-spacemap replay | **No** |
> Import-time pool-recovery issue before dataset mount |
> | OZ-7 | fatzap metadata traversal | **Yes in the demonstrated
> route** | Demonstrated after import and mount during directory
> enumeration; not confined to the `mount(2)` operation itself |
> | OZ-8 | SPL cache destruction/module teardown while grow work exists
> | **No** | Runtime teardown/concurrency issue |
> 
> ## Threat model and applicability
> 
> ### Linux mount-time policy
> 
> The published
> [Linux kernel threat model](
> https://kernel.org/doc/html/next/process/threat-model.html)
> says bugs triggered by mounting a corrupted or malicious filesystem
> image are
> generally not treated as Linux kernel security bugs because storage is
> assumed
> administrator-controlled, unless a filesystem explicitly promises
> hardened handling of untrusted media. The same document directs
> reports involving out-of-tree modules to the relevant vendor, and the
> [Linux kernel CVE process](
> https://www.kernel.org/doc/html/latest/process/cve.html)
> leaves deployment-specific applicability decisions to downstream
> users and vendors.
> 
> That policy is relevant context, but it neither assigns OpenZFS
> ownership to the
> Linux kernel nor describes every issue here. A ZFS pool import is a
> storage-pool
> activation operation, not a VFS mount. A zvol may be replayed and
> exposed as a
> block device without mounting a ZFS filesystem. Pool-control ioctls,
> vdev path
> opens, attach/mirror operations, and cache teardown are runtime
> storage-management surfaces. Even for import- or replay-time parser
> bugs, OZ-1
> changes the privilege premise on affected deployments by allowing a
> low-privileged container caller to reach operations ordinarily
> reserved for the
> host administrator.
> 
> ### `/dev/zfs` is upstream-shipped `0666`; exposure is a
> precondition, not the bug
> 
> There is no Linux ABI rule mandating one universal mode for
> `/dev/zfs`. The [current upstream OpenZFS Linux rule](
> https://raw.githubusercontent.com/openzfs/zfs/master/udev/rules.d/90-zfs.rules.in
> )
> explicitly contains:
> 
> ```udev
> KERNEL=="zfs", MODE="0666", OPTIONS+="static_node=zfs"
> ```
> 
> Mode `0666` is therefore not solely a permissive test change or an
> IncusOS mistake: it is OpenZFS's shipped upstream policy. That design
> necessarily relies
> on per-ioctl authorization to protect privileged operations after any
> local process opens the multiplexed control device. Linux
> [udev rules](https://man7.org/linux/man-pages/man7/udev.7.html) allow
> vendor,
> distribution, and local rules to override `OWNER`, `GROUP`, and
> `MODE`; a host
> using `0660`/`0600` is valid hardening but does not correct an
> in-kernel authorization check and must not be assumed on other
> installations. **Exposing
> `/dev/zfs` is a precondition; the vulnerability is OZ-1.**
> 
> A reachable node still requires the caller to hold `CAP_SYS_ADMIN`
> (in any user
> namespace, per OZ-1). This is why `--device /dev/zfs` alone in Docker
> does not
> reproduce OZ-1 — the device is present but the default capability set
> omits `CAP_SYS_ADMIN` and the ioctl fails `EPERM` (see
> [deployment environmental
> modifiers](#deployment-environmental-modifiers)). The
> exposure precondition therefore has two independent parts: a usable
> node *and*
> namespace-local `CAP_SYS_ADMIN`.
> 
> Container policy adds independent controls beyond the node: the
> container's device controller must permit access, and the
> [cgroup v2 device-controller](
> https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html#device-controller
> )
> keys the decision on access type plus char/block type and
> major/minor, not the
> pathname — so host-path DAC is not sufficient if a container has
> another permitted node for the same device number. Conversely, the
> upstream host udev
> rule does not by itself require an orchestrator to expose that device
> inside a
> container. Explicit Incus character-device passthrough is separately
> configurable ([`unix-char` docs](
> https://linuxcontainers.org/incus/docs/main/reference/devices_unix_char/),
> documented default `0660`), distinct from both the upstream `0666`
> policy and
> the container-local behavior observed on IncusOS.
> 
> For least privilege, systems that do not intentionally delegate ZFS
> administration should restrict the host node to root or a tightly
> controlled administrative group, deny the ZFS character-device
> major/minor to containers
> that do not intentionally receive ZFS delegation, and avoid granting
> containers
> `CAP_SYS_ADMIN`. Hiding the host pathname or changing only the host
> node from
> `0666` to `0660` is defense-in-depth, not a substitute for correct
> ioctl authorization.
> 
> ## The chain: OZ-1 → OZ-4
> 
> The two findings compose into an unprivileged-to-host-root chain,
> executed end
> to end in the research environment. It is told once here and
> referenced elsewhere.
> 
> 1. **Reach `/dev/zfs` with namespace-local `CAP_SYS_ADMIN` from a
> low-privilege
>    position.** In the affected deployment a default unprivileged
> container exposes a usable `/dev/zfs` (upstream udev requests `0666`)
> and a non-root
>    tenant can create a nested user namespace holding namespace-local
>    `CAP_SYS_ADMIN`.
> 2. **OZ-1 converts reachability into host-pool authority.** Pool-level
> ioctls
>    accept that namespace-local capability as host-pool authority and
> omit the
>    dataset zone/delegation gate, so the tenant imports an
> attacker-authored pool image through a host-visible file vdev. This
> removes the normal administrator-controlled-storage precondition of
> the import-time parser bugs.
> 3. **OZ-4 fires at import and is groomed into code execution.** The
> dnode bonus-buffer overflow, fired during pool import, was groomed
> via a userspace-only heap groom into kernel arbitrary read/write;
> overwriting `modprobe_path` then yielded a uid-0 shell.
> 
> **Demonstrated configuration:** uid-0 shell from an unprivileged (uid
> 1000) user-namespace position in the KASAN research guest, with KASLR
> and SLUB freelist randomization/hardening **disabled**. The
> userspace-only, fully blind
> Stage-2 run printed `XPL77-ROOT-SHELL-ACHIEVED` with all four uid
> fields zero;
> no helper LKM or runtime instrumentation was used. That result
> establishes the
> code-execution impact of OZ-4; it is not a sanitizer-only inference.
> 
> **Not claimed.** The production-hardened (KASLR-on) root shell was
> **not** completed. With KASLR enabled the forged pipe array needs a
> runtime `anon_pipe_buf_ops` address and the physical page for
> `modprobe_path`; the write-only dnode overflow cannot recover either.
> Freelist randomization makes
> adjacency probabilistic and freelist hardening makes a miss more
> likely fatal.
> On stock IncusOS, steps 1–2 and a full cross-tenant storage
> compromise were confirmed against the production signed module from a
> default unprivileged Alpine container; the OZ-4 root shell was
> **not** run on the appliance. This is
> an exploit-reliability and environmental limitation, not evidence
> that the chain
> is impossible on a production-hardened host.
> 
> The KASAN interpretation of OZ-4, the attempted-`kasan=off` detail,
> and the unverified Z1-leak KASLR-bootstrap hypothesis are stated in
> [OZ-4](#oz-4-dnode-bonus-dbuf-heap-overflow).
> Full exploit-development evidence, including the root-shell
> transcript and production-hardening assessment, is in
> [the 77b report](../research/zfs-escape-chain/77b-exploit-poc.md).
> 
> ## IncusOS deployment
> 
> The affected model is an unprivileged Incus container tenant on an
> IncusOS host
> that uses OpenZFS for host-managed storage. The attacker has the
> ordinary ability to execute code as a non-root user inside their own
> default unprivileged container — no host credentials,
> `security.privileged`, an explicit `unix-char` device, ZFS
> delegation, a crafted pool image, or control of
> a host pathname.
> 
> ### Conditions validated
> 
> | Condition | Validated result | Security meaning |
> |---|---|---|
> | **Device exposure** | A default unprivileged Alpine container
> receives `/dev/zfs` as `crw-rw-rw-` (`10:249`); RO and RW `open(2)`
> both succeed. `/etc/zfs` is absent and is not the boundary. | Removes
> device-node DAC as a barrier to reaching the ioctl interface. Mode
> alone does not grant authority for a correctly authorized ioctl. |
> | **No attacker-created device** | The visible node is not owned by
> container root; `mknod(c,10,249)` is denied `EPERM`. | Denying
> `mknod` is insufficient mitigation because the usable node is already
> supplied. The finding does not rely on `CAP_MKNOD`. |
> | **Non-root / nested-userns reachability** | A non-root container
> user can open the node before and after `unshare -Ur`; the nested
> namespace maps uid 0 to the non-root parent uid, yielding
> namespace-local `CAP_SYS_ADMIN`. | Nested userns is enabled. This
> does **not** confer host `CAP_SYS_ADMIN` and is not by itself an
> escape. | | **OZ-1** | Pool-control policy accepts `CAP_SYS_ADMIN`
> relative to the caller's userns; pool-level paths omit the
> zone/delegation gate. A non-root user after `unshare -Ur` got `rc=0`
> from raw `POOL_GET_HISTORY` against the host `local` pool and read
> host pool history. | Not a missing capability check — use of the
> wrong authority: namespace-local admin capability treated as
> host-pool authority. | | **Storage-object identity weakness** | An
> unauthorized caller destroyed a detached victim custom-volume
> dataset, cloned attacker content at the same canonical name, and a
> normal Incus attach later mounted that replacement for a different
> tenant. | Requires a detached target; the test did not force-detach
> an in-use volume. Establishes cross-tenant integrity/availability
> impact, not a host-root shell or arbitrary victim-file read. |
> 
> The device, non-root nested-userns, and host-pool authorization
> conditions were
> validated together on the affected default IncusOS deployment; the
> cross-tenant
> replacement consequence was also dynamically demonstrated on stock
> IncusOS.
> 
> ### Demonstrated attack sequence
> 
> 1. From the unprivileged attacker container, `POOL_GET_HISTORY`
> disclosed host
>    pool history and a channel program recursively enumerated the
> otherwise hidden host dataset tree, including custom volumes and
> other tenants. 2. The attacker snapshotted its own container dataset
> through a channel-program
>    sync task.
> 3. The attacker destroyed a detached victim custom-volume dataset and
> cloned the
>    attacker snapshot at the victim's canonical dataset name.
> 4. A second container attached the named custom volume through the
> normal Incus
>    API; Incus set properties on and mounted the replacement dataset.
> 5. The second tenant read the attacker's marker, `PWNED-BY-ATTACKER`;
> the original victim marker was absent because the original dataset
> had been destroyed.
> 
> Real dataset names were learned through the same authorization
> bypass, so prior
> knowledge of the host's internal layout was not required. The volume
> swap required the target custom volume to be **detached**; an
> attached dataset's long
> hold prevented the destroy in the tested path. It needed no crafted
> pool image,
> no ZFS mount by the attacker, no host uid 0, no initial-userns
> capability, and
> no ZFS delegation.
> 
> ### Proven impact and limits
> 
> | Property | Demonstrated impact on stock IncusOS |
> |---|---|
> | Confidentiality | Host pool history and full dataset topology across
> tenant boundaries. History exposed the host path of the pool
> encryption key, but not the key contents. No victim-file read
> primitive. | | Integrity | Destruction of a detached victim custom
> volume and substitution of attacker-controlled content under its
> trusted canonical name; the normal Incus runtime delivered that
> content to a second tenant. | | Availability | Loss of the original
> detached victim dataset and contents. `POOL_FREEZE` passed
> authorization but caused no observable write stall; a pool-wide
> outage was not exercised. | | Boundary crossed | A non-root process
> in an unprivileged default-profile container reached host-managed
> OpenZFS storage and affected a different tenant without host
> credentials, ZFS delegation, a tenant-created device node, or an
> explicit Incus ZFS device configuration. |
> 
> Secure Boot, the signed unified kernel image, dm-verity, TPM-bound
> host storage,
> and ZFS native encryption did not prevent this runtime attack: the
> stock signed
> module was already loaded, the pool key was active, and the
> operations used the
> live decrypted pool. These controls continue to protect other
> boundaries but do
> not replace authorization at `/dev/zfs` or provenance validation
> during attach.
> 
> This IncusOS validation does **not** reproduce the separately
> verified OZ-4 host-root exploit through the appliance tenant path,
> disclose encryption-key contents, or bypass production hardening.
> Full environment, controls, and negative results: [IncusOS end-to-end
> report](../research/incusos-containers/35b-incusos-e2e.md).
> 
> ### Pre-mount delivery primitive (untested)
> 
> Dataset or volume replacement is a potential **pre-mount delivery
> primitive**
> for a *separate* parser vulnerability: the attacker replaces a
> detached storage
> object while retaining the canonical name trusted by the
> orchestrator; a later
> legitimate attach/restart/recovery/automount causes the orchestrator
> or another
> guest to consume the replacement, which the parsing kernel then
> processes in its
> own security context. For a filesystem-backed Incus custom volume, the
> demonstrated consumer was the host Incus runtime. For a zvol or other
> block-backed volume, an analogous name-replacement weakness could
> deliver attacker-controlled block contents to a VM; filesystem
> probing, journal replay,
> or automount inside that guest could trigger a vulnerability in ZFS
> or a different filesystem implementation — e.g. delivery of a crafted
> UDF volume followed by guest automount could supply the mount action
> for [UDF-2's mount-time LVID bounds
> violation](udf-security-findings.md#udf-2-lvid-implementation-use-pointer-escapes-the-buffer).
> That OpenZFS-to-UDF transport chain has **not** been tested. The
> IncusOS test
> proved valid-dataset replacement and a later host mount, but **not** a
> mount-time memory-corruption trigger; such a chain requires separate
> validation
> and must not be collapsed into OZ-1's standalone score.
> 
> ## Deployment applicability
> 
> Merely shipping OpenZFS does not establish equal exposure. The
> import/replay/
> metadata findings require a vulnerable code revision and a path by
> which the host imports/replays/mounts/reads attacker-influenced pool
> data; OZ-1 requires a
> user-namespace caller to reach `/dev/zfs` *and* hold namespace-local
> `CAP_SYS_ADMIN`; OZ-2 additionally requires usable victim file or
> block-device
> pathing; the IncusOS volume swap depends on Incus-specific dataset
> naming and
> attach behavior and must not be generalized to another storage manager
> without
> testing; and a system with no active pool and no loaded module is not
> exposed
> merely because the package exists.
> 
> ### Dynamically tested appliances
> 
> Proxmox VE, TrueNAS SCALE, and Unraid were booted in disposable QEMU
> VMs using
> the `linux-research/appliance-harness/` reuse of the IncusOS QEMU
> harness. Verdicts apply to the tested versions and default
> configurations.
> 
> | Appliance | Default `/dev/zfs` + caps in unprivileged container |
> OZ-1 | OZ-2 foreign-zvol mirror | OZ-4 dnode-bonus heap overflow |
> Evidence | |---|---|---|---|---|---|
> | **Proxmox VE 8.x** | **No** — default unprivileged LXC has no
> `/dev/zfs`; `mknod(10,249)` blocked by cgroup/AppArmor. | **BLOCKED**
> by default; **VIABLE** with explicit bind mount `lxc.mount.entry:
> /dev/zfs dev/zfs none bind,create=file 0 0`, cgroup rule `c 10:249
> rwm`, and `lxc.apparmor.profile: unconfined`. | **VIABLE** — `zpool
> attach -f attackerpool <file> /dev/zd0` attached the victim zvol as a
> degraded mirror leg. | **BLOCKED** by default; **VIABLE** from the
> delegated/privileged container — confirmed dynamically on
> `6.8.12-37-pve` / OpenZFS `2.2.10-pve1`. Importing the armed pool
> (`dn_bonuslen=0x400`, `zfs-77-d77-s3v2.img`) **from inside** the
> delegated LXC (CT100, `/dev/zfs`
> + full caps + `/import`) fired the overflow on `spa_tryimport →
> spa_load → spa_ld_trusted_config` and **crashed the kernel**:
> NULL-deref in `strcmp` during `vdev_open_children_impl` (crashing
> task `Comm: ld-linux-x86-64` = the container's own `zpool` issuing
> `ZFS_IOC_POOL_TRYIMPORT`); host-side corroboration produced a second
> oops in `dbuf_sync_list` with `R14/R15 = dead000000000122/0100` (SLUB
> `LIST_POISON` = heap corruption). The overflow is unfixed in master
> `9b7642df` (`bonuslen = MIN(dn_bonuslen, dn_phys->dn_bonuslen)`, both
> on-disk; `ASSERT` bound compiled out of the release `zfs.ko`). A
> container→root shell was not reproduced on the stock appliance
> (release kernel faults deterministically; no KASLR leak); the
> research-configuration root shell (77b) stands separately. Full
> verdict: `linux-research/.fleet-coord/oz4-proxmox-verdict.md`. |
> `linux-research/appliance-harness/proxmox-ve/runs/20260725T150254Z/evidence/`
> (OZ-4 container fire); `…/runs/20260725T145230Z/evidence/` (OZ-4 host
> fire); `…/runs/20260724T180353Z/evidence/` (OZ-1/OZ-2 +
> default-`/dev/zfs` BLOCKED) | | **TrueNAS SCALE 25.04.2.4** | **Yes**
> — default unprivileged Incus-based container receives `/dev/zfs` as
> `crw-rw-rw- 10:249`, usable for RW `open(2)` with no guest ZFS
> package or explicit `unix-char` device. | **VIABLE** — container root
> reads host `boot-pool` history via raw `ZFS_IOC_POOL_GET_HISTORY`; a
> non-root container user in a nested userns obtains the same `rc=0`. |
> **VIABLE** — `zpool attach -f attackerpool /tmp/attacker.img
> /dev/zvol/boot-pool/victim-oz2` produced a DEGRADED mirror with the
> victim zvol as a leg. | **VIABLE** from host-side import — armed pool
> (`dn_bonuslen=0x1000`, `zfs-77-d77-s3v3.img`) imported ONLINE with no
> error erevent on the production `2.3.0-1` kernel (oversized bonus
> accepted, not rejected); same image fired `Write of size 1024 in
> dbuf_read_impl` via `spa_tryimport` under KASAN. Kernel survives;
> root-shell not demonstrated (neighbor-lottery + KASLR, as in 77b).
> **OCI delivery VALIDATED (round 3, zero host-side setup)** — a
> malicious OCI image launched as a default unprivileged container (dir
> storage backend, default profile only, no bind/device/privileged
> flag) carries the armed pool plus a static
> raw-`ZFS_IOC_POOL_TRYIMPORT` PoC and a NATIVE-encoded config naming
> the host-side rootfs path
> (`/var/lib/incus/storage-pools/default/containers/<name>/rootfs/opt/d77.img`,
> predictable from appliance defaults + container name); issued by a
> **non-root** nested-userns user (host `UID: 2147001001`), the armed
> import **panics the production kernel** (GPF in `__kmalloc` on
> `spa_tryimport → spa_load → spa_ld_load_special_directories`), while
> the clean control imports `rc=0` / LOADED. Round 2 (identical-path
> `disk` bind + `1777` staging path — two deployment concessions) also
> fired from a default unprivileged container and panicked the kernel;
> round 1 (container-relative path) was BLOCKED. Full verdicts:
> `linux-research/.fleet-coord/oz4-truenas-verdict.md`,
> `linux-research/.fleet-coord/oz4-oci-truenas-verdict.md` (round 1),
> `linux-research/.fleet-coord/oz4-oci-truenas2-verdict.md` (round 2),
> `linux-research/.fleet-coord/oz4-oci-truenas3-verdict.md` (round 3).
> |
> `linux-research/appliance-harness/truenas-scale/runs/20260725T160000Z/evidence/`
> (OZ-4 host); `…/runs/20260725T190000Z/evidence/` (OZ-4 OCI round 1);
> `…/runs/20260725T193000Z/evidence/` (OZ-4 OCI round 2);
> `…/runs/20260726T045000Z/evidence/` (OZ-4 OCI round 3, zero-wire
> kernel panic); `…/runs/20260724T183838Z/evidence/` (OZ-1/OZ-2) | |
> **Unraid 7.3.0** | **No** — a default Docker container is not passed
> `/dev/zfs`. A `--device /dev/zfs` container receives the node but
> Docker's default capability set omits `CAP_SYS_ADMIN`, so
> `ZFS_IOC_POOL_GET_HISTORY` returns `EPERM` (OZ-1 blocked through that
> path); a `--privileged` container receives all capabilities and
> reproduces OZ-1 (`rc=0`, full pool history). (The initial runc
> `pivot_root` failure was traced to the initramfs rootfs and
> resolved.) | **BLOCKED** in the default and `--device` containers;
> **VIABLE** with `--privileged` (or `--cap-add SYS_ADMIN`). Separately
> confirmed on the host from a non-root nested-userns process (`rc=0`
> against `testpool`). | **VIABLE** — `zpool attach -f attackerpool
> /tmp/attacker.img /dev/zvol/testpool/victim-oz2` attached the victim
> zvol as a mirror leg (came up ONLINE rather than DEGRADED). |
> **BLOCKED** by default and `--device /dev/zfs` (no `/dev/zfs` / no
> `CAP_SYS_ADMIN`); **VIABLE** from `--privileged` — confirmed
> dynamically on `6.18.29-Unraid` / OpenZFS `2.4.1-1`. Importing the
> inflated-bonus pool (`dn_bonuslen=0x1000`, `zfs-77-d77-s3v3.img`)
> from a `--privileged` Docker container fails `insufficient replicas`
> while the structurally identical clean control imports ONLINE; the
> kernel survives (silent heap corruption, no panic/Oops). Root shell
> not pursued (requires heap grooming + KASLR bypass). **OCI delivery
> VALIDATED** — a self-contained malicious image (`oz4-oci:latest`)
> carrying both pool images was `docker load`ed and fired the same
> differential end-to-end via `--privileged` + identical-path bind; the
> negative control showed the bind is unnecessary under Unraid's `vfs`
> storage driver (the image-internal staging path is kernel-reachable),
> so `--privileged` is the sole active ingredient. Note: a
> `--privileged` container holds full host capabilities by design, so
> this is **expected behavior, not a finding** — it is recorded for
> matrix completeness and carries no CVSS row. Full verdicts:
> `linux-research/.fleet-coord/oz4-unraid-verdict.md`,
> `linux-research/.fleet-coord/oz4-oci-unraid-verdict.md`. |
> `linux-research/appliance-harness/unraid/runs/20260725T150925Z/evidence/`
> (OZ-4); `…/runs/20260725T194343Z/evidence/` (OZ-4 OCI);
> `…/runs/20260725T111104Z/evidence/` (OZ-1/OZ-2) | | **IncusOS
> 202607192224** | **Yes** — default unprivileged Incus container
> receives `/dev/zfs` as `crw-rw-rw- 10:249`. | **VIABLE** — container
> root reads host pool history; cross-tenant dataset replacement
> demonstrated. | **VIABLE** — cross-tenant custom-volume destroy/clone
> demonstrated. | **VALIDATED (round 2, zero host-side setup)** — a
> malicious OCI image launched as a default unprivileged container
> (default profile only) places its armed pool in its own rootfs, which
> exists on the host at the predictable path
> `/var/lib/incus/storage-pools/local/containers/<ct>/rootfs/`; a
> **non-root uid 1000** (authorized via an image-controlled
> `cap_sys_admin+ep` file capability) issues a raw hand-packed
> `ZFS_IOC_POOL_TRYIMPORT` (libzfs bypassed) at that host path, and the
> host kernel opens the vdev → `dbuf_read_bonus` overflows
> `kmalloc-512` → the host ZFS load path and storage stack **wedge**
> (reproduced on a fresh kernel; `incusd` unresponsive). The clean
> control imports in <1s. On this kernel the overflow surfaces as a
> wedge/storage-DoS rather than TrueNAS's GPF-panic (heap-layout
> dependent). Round 1 (container-relative path) was BLOCKED. Full
> verdicts: `linux-research/.fleet-coord/oz4-oci-incusos-verdict.md`
> (round 1), `linux-research/.fleet-coord/oz4-oci-incusos2-verdict.md`
> (round 2); PoC `linux-research/incusos-spike/oz4-tryimport.c`. |
> `linux-research/incusos-spike/runs/20260726-oz4-oci2/evidence/` (OZ-4
> OCI round 2); `…/runs/20260725-oz4-oci/evidence/` (OZ-4 OCI round 1);
> `…/runs/20260724-perm-pristine/` (OZ-1/OZ-2) |
> 
> The OZ-4 values for **Proxmox VE 8.x**, **TrueNAS SCALE 25.04.2.4**,
> **Unraid
> 7.3.0**, and **IncusOS** are confirmed by the fleet runs
> (`.fleet-coord/oz4-proxmox-verdict.md`,
> `.fleet-coord/oz4-truenas-verdict.md`,
> `.fleet-coord/oz4-unraid-verdict.md`,
> `.fleet-coord/oz4-oci-incusos-verdict.md`,
> `.fleet-coord/oz4-oci-truenas-verdict.md`,
> `.fleet-coord/oz4-oci-truenas2-verdict.md`,
> `.fleet-coord/oz4-oci-unraid-verdict.md`). All four are **BLOCKED** by
> default
> for the OZ-4 end-to-end fire without any container privilege or host
> path; Proxmox VE and Unraid are **VIABLE** from delegated/privileged
> containers, and
> TrueNAS SCALE is **VIABLE** from the host-side import path. The
> **malicious OCI
> image delivery vector is VALIDATED with zero host-side setup on both
> IncusOS and TrueNAS SCALE** (the self-referential host-rootfs path
> makes the image's own payload host-resolvable by construction; a
> default unprivileged container's
> **non-root** user fires the overflow via a raw
> `ZFS_IOC_POOL_TRYIMPORT`). On **TrueNAS SCALE** the zero-wire armed
> import **panics the production kernel**
> (GPF in `__kmalloc` on the `spa_load` path; crashing task host
> `UID: 2147001001`); on **IncusOS** it **wedges the host ZFS load path
> and storage stack** (`incusd` unresponsive), reproduced on a fresh
> kernel — the panic-vs-wedge difference is heap-layout dependent, the
> primitive is the same.
> On Unraid the OCI vector also fires, but only from `--privileged` —
> **expected
> behavior for a fully privileged container, not a finding**. No tested
> appliance
> remains BLOCKED for the OCI delivery vector.
> 
> #### RHEL 10.2 STIG + FIPS + SELinux enforcing (OpenZFS 2.2.10-1 kABI
> kmod)
> 
> Tested 2026-07-24/25 on a custom Image Builder RHEL 10.2 guest (kernel
> `6.12.0-211.39.1.el10_2`, FIPS mode enabled, OpenSCAP STIG profile
> applied, SELinux `Enforcing`/targeted, OpenZFS `2.2.10-1` kABI kmod,
> user namespaces enabled, `fapolicyd` active, `/tmp`+`/var/tmp`
> `noexec`, no udisks2/automount).
> This is the **non-default configuration** relevant to hardened RHEL
> estates. Full evidence: `linux-research/rhel/oz12-rhel10-findings.md`
> (context matrix run in both Enforcing and Permissive for clean
> attribution, SELinux policy enumeration, and podman runtime
> scenarios).
> 
> **Per-finding verdicts on this configuration:**
> 
> | Finding | Verdict | Blocking mechanism |
> |---|---|---|
> | OZ-1 (userns pool-ioctl authorization bypass) | **BLOCKED** |
> Kernel/OpenZFS credential check — all pool ioctls (`POOL_GET_HISTORY`,
> `CHANNEL_PROGRAM`, `POOL_CREATE`, `POOL_DESTROY`) return `EINVAL` for
> namespace-local-CAP_SYS_ADMIN callers in both Enforcing and
> Permissive. SELinux is *not* the blocker here; the 2.2.10 build's
> check is strict (initial-namespace authority required). |
> | OZ-2 (vdev-open DAC bypass) | **BLOCKED** | Same kernel credential
> check (`POOL_CREATE` over a root-only `0700` vdev returns `EINVAL`);
> victim vdev DAC correctly returns `EACCES` on direct open. |
> | OZ-3 / OZ-4 and the parser family | **NOT VALIDATED on 2.2.10** |
> The parser findings were confirmed on OpenZFS `2.4.99` master; RHEL's
> kmod is 2.2.10 — code-equivalence per finding was not established.
> Delivery is additionally absent on this host: pool import/management
> requires the same ioctls the credential check blocks, and there is no
> udisks2/automount mount-time path (loop devices are `root:disk 0660`,
> test user not in `disk`). |
> 
> **Which mechanisms *did* prevent (ordered by where the attack actually
> stops):**
> 
> 1. **Kernel / OpenZFS credential model** — the primary control on this
>    build: unauthorized userns callers get `EINVAL` at the ioctl. This
> is what stops OZ-1/OZ-2 even for `unconfined_t` host users, where
> SELinux imposes nothing.
> 2. **SELinux `container_t` device gate** — `/dev/zfs` is
>    `system_u:object_r:device_t`; the only policy path from
> `container_t` is `allow container_domain device_node:chr_file {...}
> [container_use_devices]`,
>    and `container_use_devices --> off` on the target. Verified by
> toggling the boolean: off → `open("/dev/zfs")` fails `EACCES`; on →
> succeeds; off → fails again. A containerized attacker is stopped at
> the device-open step in Enforcing mode, before any ioctl.
> 3. **fapolicyd** (STIG) — independently blocks execution of untrusted
>    binaries by non-root users; stops the attack before SELinux or ZFS
> is reached. (Stopped temporarily during testing to isolate
> attribution.) 4. **DAC** — on vdev files (direct open `EACCES`) and
> on `/dev/zfs` ownership (mode 666, so not a barrier for uid — by
> design; see `/dev/zfs` exposure discussion in this report).
> 5. **Container runtime + device cgroup** — default podman exposes no
>    `/dev/zfs`; `-v /dev/zfs:/dev/zfs` (preserving the host `device_t`
>    label) fails with `EPERM` from the device cgroup, not SELinux;
>    `--device` works but **relabels** the node to `container_file_t` (a
>    runtime decision, not a policy weakness).
> 6. **STIG mount options** — `/tmp` and `/var/tmp` `noexec` blocked the
>    initial PoC delivery path (binary had to be staged via `podman cp`
>    into the container rootfs instead).
> 
> **How SELinux does and does not prevent (the nuanced answer):**
> 
> - **Does:** gate the *first* contact for confined domains —
> `container_t` (and therefore default podman/docker containers and
> OpenShift restricted SCCs) cannot open `/dev/zfs` while
> `container_use_devices` is off. Policy enumeration (4,718 types)
> shows **no hidden path**: no transition out of `container_t` to any
> domain with `device_t` access, no unconditional device rule for it,
> and the only domains with unconditional `device_node` access
> (`container_device_t`, `container_device_plugin_t`, `spc_t`) require
> an explicit administrator/runtime/SCC decision.
> - **Does not:** mediate ioctl-level authorization. Once a process can
>   open `/dev/zfs` — and every unconfined host user can, in Enforcing —
>   SELinux has no say over which ZFS ioctls succeed. The control that
>   decides OZ-1/OZ-2 there is the kernel/OpenZFS credential check.
>   SELinux also does not constrain `unconfined_t` (host users), does
> not stop `spc_t`/privileged containers (by design), does not prevent
> an administrator from enabling `container_use_devices` or passing
>   `--device`, and offers no protection against the OZ-3+ parser family
>   should any import/replay delivery path open up.
> - **Net:** on this exact configuration SELinux is defense-in-depth,
> not the mitigation. If a vulnerable OpenZFS build (with the OZ-1
>   namespace-local-`CAP_SYS_ADMIN` acceptance) were installed, the
>   kernel-side precondition would fail for *unconfined host users too*
> — and SELinux's device gate would become the *decisive* control for
>   containerized attackers only. Keep it Enforcing, and audit
>   `container_use_devices` and privileged-SCC usage as the effective
>   exceptions list.
> 
> These verdicts raise the severity of the headline chain on TrueNAS
> SCALE (default unprivileged container satisfies the `/dev/zfs` +
> nested-userns precondition) and reduce it on Proxmox VE and Unraid
> (precondition not met by
> default). They confirm that explicit administrative passthrough makes
> the same
> authorization flaws viable on Proxmox VE and Unraid, and that
> OZ-1/OZ-2 are present and reachable on Unraid 7.3.0.
> 
> ### Untested / static-only candidates
> 
> The products below have **not** been dynamically reproduced; they are
> triage candidates only.
> 
> | Operating system / product | Documented ZFS integration | Relevance
> & open questions |
> |---|---|---|
> | **Proxmox Backup Server** | Installer supports ext4/XFS/ZFS; ships a
> Proxmox kernel with ZFS. ([installation](
> https://pbs.proxmox.com/docs/installation.html), [ZFS sysadmin](
> https://pbs.proxmox.com/docs/sysadmin.html#zfs-on-linux)) | High
> availability impact if the backup pool is hit. Default installer
> selection is not ZFS; no low-privilege `/dev/zfs` exposure
> identified. Verify package revision and automated import/maintenance
> inputs. | | **Ubuntu / Ubuntu-derived** | ZFS in default kernel
> packages; `zfsutils-linux`. ([Ubuntu
> ZFS](https://wiki.ubuntu.com/Kernel/Reference/ZFS), [OpenZFS Ubuntu](
> https://openzfs.github.io/openzfs-docs/Getting%20Started/Ubuntu/index.html))
> | Relevant only where the module is loaded and a pool is used.
> Ubuntu/LXD hosts deserve separate review (ZFS driver, zvol block mode,
> snapshots/clones, optional `zfs.delegate`); delegation enabled is not
> proof of the IncusOS bypass. |
> | **LXD with the ZFS storage driver** | LXD recommends ZFS and
> supports optional `zfs.delegate`. ([ZFS driver](
> https://documentation.ubuntu.com/lxd/latest/reference/storage_zfs/),
> [init](
> https://documentation.ubuntu.com/lxd/latest/howto/initialize/)) |
> High-priority when delegation is enabled. LXD docs say ordinary
> containers receive a minimal ephemeral `/dev` and do not list
> `/dev/zfs` among default devices, so the OZ-1 precondition should not
> be assumed for a default LXD container. | | **Debian** | `zfs-dkms`
> in `contrib` (SPA/DMU/ZVOL/ZPL). ([package](
> https://packages.debian.org/trixie/zfs-dkms)) | Optional, not a
> default filesystem. Review package revisions and any container/device
> delegation by higher-level software. Proxmox treated separately. | |
> **NixOS** | Manual/modules support ZFS pools, boot-time import, ZFS
> root. ([manual](https://nixos.org/manual/nixos/stable/), [ZFS
> options]( https://nixos.org/manual/nixos/stable/options)) | Optional
> but deeply integrated when enabled. OZ-1 still requires a separately
> exposed `/dev/zfs`. | | **Alpine Linux** | Packages OpenZFS;
> documents auto import/mount and root-on-ZFS; Extended image ships
> modules. ([Alpine ZFS]( https://wiki.alpinelinux.org/wiki/ZFS),
> [OpenZFS Alpine](
> https://openzfs.github.io/openzfs-docs/Getting%20Started/Alpine%20Linux/index.html))
> | Optional on installed systems. An Alpine container guest is not
> itself affected unless the host exposes its OpenZFS device; the
> relevant kernel/module are the host's. | | **Fedora,
> RHEL/Rocky/Alma/CentOS, openSUSE, Arch, Gentoo, Slackware** | OpenZFS
> publishes install/root-on-ZFS guidance, generally via optional repos.
> ([distribution index](
> https://openzfs.github.io/openzfs-docs/Getting%20Started/index.html))
> | Affected only where OpenZFS is installed and loaded. Treat version,
> backport, Secure Boot/module-signing, pool-import automation, and
> `/dev/zfs` delegation as host-specific. | | **QNAP QuTS hero** |
> Linux-based ZFS NAS with
> pool/shared-folder/LUN/snapshot/clone/virtualization/container
> features. ([docs](
> https://docs.qnap.com/operating-system/quts-hero/5.1.x/en-us/about-quts-hero-CAAE5DD0.html),
> [raw-CLI warning](
> https://www.qnap.com/en-us/how-to/faq/article/why-should-i-avoid-using-raw-zfs-cli-commands-on-my-quts-hero-nas))
> | **Static-first; source-validated from the `qosgpl` 5.2.0 CDDL
> tarball:** QZFS is an OpenZFS fork diverged ~2020, feature-frozen,
> with opaque backport discipline. **Z1, Z2, and dnode-bonus S3 are
> VALIDATED** (code shape present; Z1 is weaker than upstream — no
> `reclen > end - lrp` check); **gang overrun is VALIDATED (source)**;
> **log-spacemap S4 is BLOCKED** (feature entirely absent from the
> fork). Tenant-driven `ZFS_IOC_POOL_IMPORT` through Container Station
> remains plausible but unverified (container profile closed-source).
> Treat QNAP as a separate implementation; the dominant RCE surface on
> QNAP is the management plane, not the OpenZFS parser chain. Full
> static analysis:
> `linux-research/.fleet-coord/validate-qnap-qzfs-verdict.md`. |
> 
> TrueNAS CORE, FreeBSD, illumos, and QNAP QES are not Linux and are not
> candidates for the Linux-specific user-namespace policy flaw. Some
> on-disk parser code is shared across OpenZFS platforms, so those
> projects may still need
> a separate source/runtime review; applicability must not be inferred
> from the
> Linux results.
> 
> ### Suggested verification priority
> 
> 1. **Proxmox Backup Server** — packaged revision and automated
> import/replay/
>    maintenance paths; default installer selection is not ZFS, so
> score OZ-1 only
>    if a real low-privilege `/dev/zfs` path is found.
> 2. **Ubuntu/LXD** — default containers vs explicitly delegated ZFS
> volumes; determine exactly when the host device and pool namespace
> become reachable.
> 3. **QNAP QuTS hero** — static-first; Z1/Z2/dnode-bonus-S3
> **VALIDATED**, gang **VALIDATED (source)**, log-spacemap S4
> **BLOCKED** (feature absent).
>    Build a QNAP QEMU harness to dynamically confirm Z1/Z2/dnode-bonus
> S3 on QuTS hero firmware, and determine whether Container Station
> exposes `/dev/zfs` to tenants before treating the upstream chain as
> reachable. 4. **General-purpose distributions** — parser-version
> review and automated import/replay surfaces; test OZ-1 only where a
> real low-privilege `/dev/zfs`
>    path exists.
> 5. **Unraid delegated-container follow-up** — `--device /dev/zfs`
> alone is **BLOCKED** for OZ-1 (no `CAP_SYS_ADMIN`);
> `--privileged`/`--cap-add SYS_ADMIN`
>    reproduces OZ-1. Survey Community Applications templates that
> request `--device /dev/zfs` or privileged mode to assess real-world
> exposure.
> 
> ## Impact and CVSS scoring guidance
> 
> This report contains independent root causes. They should receive
> **separate CVE
> records and separate scores**; one score for the entire document would
> obscure
> both the directly exploitable authorization failures and the different
> preconditions of the parser bugs. Accordingly, the tables below
> contain **one
> row per root cause** plus the single demonstrated chain; deployment
> and configuration variation is handled in
> [Environmental metrics](#deployment-environmental-modifiers), not by
> multiplying
> base-score rows.
> 
> The vectors are **candidate vectors for coordinator review**, not
> assignments.
> They follow the [FIRST CVSS v3.1](
> https://www.first.org/cvss/v3.1/specification-document)
> and [v4.0](https://www.first.org/cvss/v4.0/specification-document)
> definitions
> and were recomputed with the `cvss` Python library (v3.6).
> 
> - `PR:L` means code execution by a non-root user in the tested
> default-profile
>   unprivileged container, not host administrative access.
> - `PR:H` models direct host-administrator import/replay/mount/read.
> It is not a
>   claim that every deployment requires host administration.
> - `S:C` / Subsequent System impacts model the container/tenant
> authority and the
>   host or victim tenant as different scopes. A coordinator that
> treats them as
>   one authority may choose `S:U`; the v3.1 `S:U` alternatives for
> OZ-1, OZ-2, and
>   the headline chain are **7.3, 7.1, and 7.0** respectively.
> - `I:L` records a confirmed or source-certain kernel-memory write
> without upgrading it to complete host integrity. `C:N` is retained
> where an OOB read
>   did not return data to the attacker. Source-only entries are
> provisional; evidence confidence must not be encoded by changing
> Attack Complexity unless
>   the attack itself depends on an external condition.
> 
> **Scoring the route, not multiplying rows.** A standalone parser bug
> reachable
> only through host-admin import/mount may warrant `PR:H`; the same
> parser reached
> through OZ-1 has the confirmed low-privilege precondition represented
> by `PR:L`
> — score that specific bug with `PR:L/S:C` rather than inventing a
> composite row.
> OZ-1's import route removes the `PR:H` administrator precondition of
> every import/replay parser row. OZ-1's dataset-replacement
> consequence can precede and
> arrange a later mount by a trusted consumer; raise chained impact only
> where the
> attacker can construct the required malformed state and the consumer
> predictably
> mounts/replays it — the current IncusOS evidence proves valid-dataset
> replacement and a later host mount, not a mount-time memory-corruption
> trigger.
> Do not combine multiple independent root causes into one CVE record,
> and do not
> use the in-tree administrator-mounted-image policy to assign `PR:H`
> mechanically
> to every OpenZFS finding.
> 
> ### CVSS v3.1 candidate vectors
> 
> | Finding | Candidate CVSS v3.1 vector | Score | Evidence and scoring
> boundary |
> |---|---|---:|---|
> | **OZ-1** (default unprivileged container exposing `/dev/zfs` to a
> non-root tenant who can create a nested user namespace) |
> `CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:L/I:H/A:H` | **8.7 High** |
> Upstream ships `0666`; the authorization flaw treats namespace-local
> `CAP_SYS_ADMIN` as host-pool authority. End-to-end evidence shows
> unauthorized destroy/clone that removed victim data and substituted
> attacker content. No host-root shell, victim-file read, forced detach
> of an in-use volume, or pool-wide outage was demonstrated through
> this chain. | | **OZ-2** (foreign zvol attach and persistent mirror
> writes) | `CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:H/A:H` | **8.4
> High** | Dynamically confirmed on IncusOS, Proxmox VE (`zd0` degraded
> mirror leg), and Unraid 7.3.0. No victim read primitive; label
> destruction and continuing attacker-controlled writes support high
> integrity and availability. | | **Container escape to host root shell
> (headline chain):** OZ-4 reached through OZ-1's unprivileged import
> path, demonstrated in the research VM |
> `CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H` | **7.8 High** | The
> uid-0 shell demonstrates complete host CIA from a non-root,
> container-equivalent position. `AC:H` reflects the required heap
> grooming and the disabled KASLR/SLUB freelist hardening. Not
> reproduced on production-hardened IncusOS. Chained scenario, not
> OZ-4's standalone base vector. *(Hypothetical ceiling, not
> demonstrated: if the OZ-4 exploit were reliable against a
> default-profile container, `AC:L` gives 8.8.)* | | **Malicious OCI
> image → host-kernel memory corruption/DoS (OZ-4, image-delivered):**
> default unprivileged container, non-root user, zero host-side setup |
> `CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:H` | **7.3 High** |
> VALIDATED with zero host-side setup on TrueNAS SCALE
> (production-kernel panic; non-root host `UID: 2147001001`) and
> IncusOS (host ZFS load path / storage stack wedged, reproduced on a
> fresh kernel). `AC:L` — no heap grooming or race required; the
> un-groomed import fires reliably. `I:L` — kernel-memory corruption
> without a demonstrated controlled compromise; `A:H` — host
> kernel/storage DoS. `PR:L` models the default-container launch
> position; delivery requires the victim to run the attacker's image.
> Root-shell escalation not demonstrated on a production kernel. | |
> **OZ-4** alone as an administrator-import parser bug |
> `CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H` | **6.4 Medium** | The
> exploit establishes the impact ceiling; `PR:H` excludes OZ-1 and
> `AC:H` retains the demonstrated configuration/grooming dependencies.
> | | **OZ-3a** (ZIL record-length truncation) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H` | **4.4 Medium** |
> KASAN confirmed the ~4 GiB OOB read/fail-fault during replay. No
> bytes returned; no integrity consequence; `C:N/I:N`, `A:H`. | |
> **OZ-3b** (ZIL hole-write zero-fill) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H` | **5.1 Medium** |
> KASAN confirmed a 67,108,864-byte vmalloc OOB zero-write. `I:L` =
> kernel-memory modification without controlled host compromise. | |
> **OZ-3c** (ZIL xvattr stack overwrite) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H` | **5.1 Medium** |
> UBSAN confirmed array-index-out-of-bounds at `zfs_replay.c:115`
> (`index 3 is out of range for type 'uint32_t [3]'`) at mount from a
> crafted pool image; kernel panic. Previously source-confirmed; now
> VALIDATED dynamically. `I:L` = stack overwrite without demonstrated
> controlled host compromise. | | **OZ-5a** (gang-tree recursion) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H` | **4.4 Medium** |
> Dynamically confirmed stack-guard fault and panic from a valid
> depth-2048 chain. | | **OZ-5b** (gang-leaf leader-buffer overrun) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H` | **5.1 Medium** |
> KASAN confirmed attacker-controlled image bytes written 128 KiB past
> a 128 KiB ARC allocation before checksum rejection. Exploitation not
> attempted. | | **OZ-6** (log-spacemap index validation) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H` | **5.1 Medium** |
> KASAN confirmed NULL-ptr deref in `vdev_is_concrete` and
> slab-out-of-bounds `vdev_ms[]` selection/range-tree mutation during
> writable import. Previously source-confirmed; now VALIDATED
> dynamically. | | **OZ-7** (fatzap chain traversal) |
> `CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:L` | **3.4 Low** | KASAN
> confirmed OOB accesses/write and a crafted cycle kept one kernel
> operation in an unbounded loop. No exfiltration, persistent host
> modification, panic, or system-wide outage. | | **OZ-8** (SPL
> cache-destroy race) | `CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:N/A:L`
> | **1.9 Low** | Dynamically confirmed permanent uninterruptible sleep
> of the destroy thread. `AC:H` = required in-flight grow race; `A:L` =
> blocked teardown, not a host-wide outage. The untested live-object
> UAF is excluded. |
> 
> ### CVSS v4.0 candidate vectors
> 
> CVSS v4.0 retires Scope and splits impact into Vulnerable System and
> Subsequent
> System. Scores are base-score only; adjust with Environmental metrics
> per deployment.
> 
> | Finding | Candidate CVSS v4.0 vector | Score | Notes |
> |---|---|---:|---|
> | **OZ-1** |
> `CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:L/VI:H/VA:H/SC:L/SI:H/SA:H` |
> **8.4 High** | Host-pool disclosure and destruction from a non-root
> tenant; low subsequent confidentiality, high subsequent
> integrity/availability. | | **OZ-2** |
> `CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/VI:H/VA:H/SC:N/SI:H/SA:H` |
> **8.3 High** | No confidentiality impact; high integrity/availability
> on the victim device. Verified on IncusOS, Proxmox VE, Unraid 7.3.0. |
> | **Container escape to host root shell (headline chain)** |
> `CVSS:4.0/AV:L/AC:H/AT:P/PR:L/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H` |
> **8.8 High** | `AC:H`/`AT:P` reflect the demonstrated heap grooming
> and disabled KASLR/SLUB hardening. |
> | **Malicious OCI image → host-kernel memory corruption/DoS (OZ-4,
> image-delivered)** |
> `CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/VI:L/VA:H/SC:N/SI:N/SA:N` |
> **6.9 Medium** | VALIDATED with zero host-side setup on TrueNAS SCALE
> (kernel panic, non-root issuer) and IncusOS (host storage-stack
> wedge, reproduced). No grooming required; no demonstrated controlled
> compromise (`VI:L`), host availability impact `VA:H`. |
> | **OZ-4** alone |
> `CVSS:4.0/AV:L/AC:H/AT:P/PR:H/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H` |
> **8.7 High** | Even with `PR:H`, the demonstrated uid-0 shell keeps
> severity High in v4.0. |
> 
> For the standalone OZ-3, OZ-5, OZ-6, OZ-7, and OZ-8 rows, begin with
> `AV:L/AC:L/AT:N/PR:H/UI:N` (or `AC:H/AT:P` where the attack depends
> on a race or
> heap placement) and carry forward only the demonstrated Vulnerable
> System impacts. Do not add Subsequent System impact without an
> observed cross-boundary
> consequence, and do not set high confidentiality or integrity merely
> because KASAN reported an OOB access.
> 
> ### Deployment Environmental modifiers
> 
> The base vectors above assume the `/dev/zfs` + nested-userns
> capability precondition is satisfied. These are
> deployment/configuration facts, scored with Environmental metrics
> (`MPR`, `MVC`, `MVI`, `MVA`, `MS`), **not** separate
> base vectors:
> 
> - **TrueNAS SCALE 25.04.2.4** satisfies the precondition in a
> **default** unprivileged Incus container — the OZ-1 base vector
> applies directly.
> - **Proxmox VE** default unprivileged LXC and **Unraid** default
> Docker do **not**
>   expose `/dev/zfs`; on those platforms the OZ-1/OZ-2 base vectors
> apply **only
>   after an administrator adds explicit device passthrough** (Proxmox
> VE delegated
>   LXC bind-mount + cgroup/AppArmor relaxation). This is a
> configuration choice,
>   not a distinct vulnerability.
> - **Unraid Docker capability matrix (dynamically verified):**
>   - `--device /dev/zfs` **alone** — node present, but Docker's default
> capability
>     set omits `CAP_SYS_ADMIN`, so `ZFS_IOC_POOL_GET_HISTORY` returns
> `EPERM`.
>     **OZ-1 blocked; not a security finding**
> (`CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:N` = **0.0**,
>     recorded as an honest negative).
>   - `--privileged` (or `--cap-add SYS_ADMIN`) — `/dev/zfs` present
> and all capabilities granted; `ZFS_IOC_POOL_GET_HISTORY` returned
> `rc=0` with full
>     pool history. The same OZ-1 base vector applies; the precondition
> is an intentional privileged-posture choice.
>   - On the Unraid 7.3.0 host, OZ-1 was also confirmed from a non-root
> nested user namespace, and OZ-2 by foreign-zvol mirror attach.
> 
> Score the underlying authorization flaw with the base vector, then
> apply Environmental metrics to reflect the actual deployment's
> container-device and
> capability policy. Environmental metrics should raise priority for
> platforms that
> expose `/dev/zfs` to unprivileged containers where nested user
> namespaces are
> enabled, auto-import tenant storage, or host mutually distrusting
> tenants on zvols.
> 
> ## OZ-1: Linux user-namespace pool-control authorization bypass
> 
> ### Root cause
> 
> `zfs_secpolicy_config()` in `module/zfs/zfs_ioctl.c:1344-1353`
> reaches the Linux policy implementation in
> `module/os/linux/zfs/policy.c:55,68-71`. The check is effectively:
> 
> ```c
> ns_capable(cr->user_ns, CAP_SYS_ADMIN)
> ```
> 
> This asks whether the credential has `CAP_SYS_ADMIN` in the
> credential's own user namespace. A process that maps itself to uid 0
> in a newly created user namespace satisfies that test even though it
> has no capability in the initial
> user namespace. Dataset operations have additional zone/delegation
> checks, but
> the pool-level handlers protected by `zfs_secpolicy_config()` do not
> consistently
> apply an equivalent pool-visibility or global-zone restriction.
> `spa_open()` also
> has no namespace visibility filter.
> 
> ### Confirmed reachability
> 
> In the KASAN research guest the harness deliberately changed the
> devtmpfs node
> to `0666` to test the upstream-open surface. A process starting as
> uid 1000 created a user namespace, mapped itself to uid 0, and
> invoked raw OpenZFS ioctls without any dataset delegation. Confirmed
> operations: `ZFS_IOC_POOL_FREEZE` and `ZFS_IOC_POOL_DESTROY` against
> a host pool; pool history and property operations;
> `ZFS_IOC_CHANNEL_PROGRAM`, including iteration
> over datasets not visible through the normal dataset ioctl gate and
> sync-task
> operations without the normal ioctl delegation policy; and import of
> an attacker-authored file vdev at a host-visible path.
> 
> The same policy gap was confirmed on **stock IncusOS with OpenZFS
> 2.4.3** — the
> attacker confined to an unprivileged default-profile Alpine container
> (`uid 0 -> host uid 1000000`), no `security.privileged`, no ZFS
> delegation, with an accessible `0666` `10:249` `/dev/zfs` node. From
> that position: `POOL_GET_HISTORY` returned host pool history
> including the pool encryption key's host path; a channel program
> recursively enumerated the host dataset tree
> that normal zone-gated ioctls hid; `POOL_FREEZE` passed authorization
> (no observable write stall on this build); and channel-program sync
> tasks performed
> the cross-tenant volume swap described in [the
> chain](#the-chain-oz-1--oz-4) and
> [IncusOS deployment](#incusos-deployment). This run verifies OZ-1 and
> the dataset-replacement consequence; it does **not** reproduce the
> OZ-4 exploit under
> IncusOS production hardening.
> 
> The gap was also reproduced on **TrueNAS SCALE 25.04.2.4** from a
> default unprivileged Incus-based container (both container root and a
> non-root user after `unshare -Ur` got `rc=0` from raw
> `ZFS_IOC_POOL_GET_HISTORY` against the
> host `boot-pool`), on **Proxmox VE 8.x** with `/dev/zfs` explicitly
> passed through to an otherwise unprivileged LXC container, and on
> **Unraid 7.3.0** (from a `--privileged` Docker container and from a
> non-root host process after
> `unshare -Ur`; a `--device /dev/zfs`-only container returned `EPERM`
> for want
> of `CAP_SYS_ADMIN`). Detailed mechanism and the wider ioctl inventory:
> [zone-gate analysis](../research/zfs-zonegate-bypass/README.md).
> 
> ### Impact
> 
> Host authorization-boundary failure when `/dev/zfs` is reached with
> namespace-local `CAP_SYS_ADMIN` by an unprivileged user namespace or
> container:
> host-pool integrity and availability can be affected; pool history and
> events
> can cross the namespace boundary; channel programs can bypass the
> dataset-ioctl visibility/delegation layer; and attacker-authored pool
> images can
> reach the import parser set when a usable host-visible path exists.
> No claim depends on a memory-corruption exploit — host-pool
> operations were accepted directly by the authorization policy.
> 
> ### Recommended fix
> 
> - Require `CAP_SYS_ADMIN` in the initial user namespace, an explicit
>   global-zone check, or equivalent host-level authorization for
> global pool operations.
> - Apply a pool-visibility policy before `spa_open()` or centrally in
> the pool-modifying ioctl registration path, rather than auditing each
> handler independently.
> - Apply delegation and zone filtering inside channel-program dataset
> iteration
>   and sync-task authorization.
> - Treat `/dev/zfs` exposure as privileged until these policy
> boundaries are enforced in-kernel.
> - As defense-in-depth, restrict the host node to root or a tightly
> controlled
>   administrative group, deny the ZFS character-device major/minor to
> containers
>   that do not intentionally receive ZFS delegation, and avoid granting
>   containers `CAP_SYS_ADMIN`.
> 
> ## OZ-2: vdev open bypasses caller DAC
> 
> ### Root cause
> 
> Pool-create and vdev-attach requests accept paths supplied by the
> caller, but
> the eventual kernel-side opens do not consistently enforce whether
> that caller
> could open the same object: block-device lookup/open checks device
> cgroups but
> does not perform the ordinary inode DAC check against the original
> caller; file
> vdev opens can run on taskq threads with kernel credentials and the
> initial mount namespace; and the userspace `zpool` preflight's failed
> `zero_label()` result is not a reliable security boundary because the
> raw ioctl remains available and the failure is discarded in the
> client path. Full path analysis:
> [zvol DAC report](../research/zvol-dac-bypass/README.md).
> 
> ### Dynamic evidence
> 
> From userns root with no delegation: direct userspace reads of a
> root-owned mode-0600 zvol failed with `EACCES`; raw
> `ZFS_IOC_POOL_CREATE` using that zvol
> as a vdev succeeded and overwrote label regions; file vdevs behind
> mode-0700 root-owned directories also opened; and
> `ZFS_IOC_VDEV_ATTACH` attached a foreign
> zvol as a mirror leg of an attacker-controlled pool. After attach,
> writes to the
> attacker pool were mirrored into the foreign zvol — nineteen of
> twenty test patterns observed on the victim device, none on the
> hidden-zvol control ([VDEV_ATTACH
> report](../research/zfs-vdevattach/README.md)).
> 
> The same mirror-leg behavior was reproduced on Proxmox VE 8.x
> (`/dev/zd0`, DEGRADED), TrueNAS SCALE 25.04.2.4
> (`/dev/zvol/boot-pool/victim-oz2`, DEGRADED),
> and Unraid 7.3.0 (`/dev/zvol/testpool/victim-oz2`, ONLINE). This is a
> storage-manager and block-device pathing vulnerability, not a
> mount-time filesystem-parser bug: ZFS accepted a path naming another
> block-like object, opened it in the kernel despite the caller's
> direct-access failure, and used normal mirror semantics to persist
> attacker-controlled writes. The victim zvol
> could itself back a VM or another filesystem; it need not contain or
> mount ZFS.
> 
> ### Recommended fix
> 
> - Carry the ioctl caller's credentials to vdev open and require the
> same permission that a direct caller-side open would require.
> - Make failed label-open/zero operations fatal in libzfs preflight.
> - Combine with OZ-1's host-level pool-operation gate; either fix alone
> leaves
>   another unsafe path.
> 
> ## OZ-3: ZIL replay record validation
> 
> ZIL replay allocates a 32 MiB scratch buffer and consumes records from
> attacker-authored, checksum-valid log blocks. Checksums are unkeyed
> and therefore do not establish trust in a foreign pool image.
> 
> ### OZ-3a: record-length truncation
> 
> In `module/zfs/zil.c:501,548-549`, the on-disk `uint64_t lrc_reclen`
> is assigned
> to a signed `int`, so bounds checks validate only the truncated value.
> `zil_replay_log_record()` later reloads the original full-width field
> and passes
> it to `memcpy()` at `zil.c:4702,4734`. A record length of
> `0x1_0000_0040` passes
> as 64 bytes in `zil_parse()` and becomes ~4 GiB again in the copy.
> KASAN reported a slab-out-of-bounds read of 4,294,967,360 bytes
> during replay.
> 
> ### OZ-3b: hole-write zero-fill
> 
> For an inline-less `TX_WRITE` whose block pointer is a hole,
> `zil_read_log_data()` at `module/zfs/zil.c:316-335` zero-fills using
> an attacker-controlled length without bounding it to the remaining
> replay scratch
> buffer. KASAN reported a 67,108,864-byte vmalloc out-of-bounds write.
> 
> ### OZ-3c: xvattr mask size
> 
> `zfs_replay_xvattr()` in `module/zfs/zfs_replay.c:96-165` copies a
> record-controlled attribute mask into fixed `xva_reqattrmap[3]`
> storage. The relevant capacity assumption is enforced only by
> `ASSERT`, absent in release builds. Source-confirmed stack overwrite;
> a standalone dynamic trigger was not
> completed. Full source analysis, triggers, controls, and KASAN
> excerpts: [confirmed ZIL
> report](../confirmed/zfs-zil-replay/README.md).
> 
> ### Recommended fix
> 
> - Keep record lengths in a single unsigned type and reject any value
> larger than
>   the remaining log block and replay scratch-buffer capacity.
> - Add type-specific runtime validators before copying or extending any
> replay
>   record, analogous to the receive-record hardening at the audited
> revision.
> - Validate write length, block-pointer shape, ACL/xvattr sizes, and
> all variable
>   arrays before dispatch.
> 
> ## OZ-4: dnode bonus-dbuf heap overflow
> 
> `dnode_create()` copies `dn_nblkptr`, `dn_bonuslen`, and slot
> metadata from disk
> without release-build runtime validation
> (`module/zfs/dnode.c:577-624`). In `dbuf_read_bonus()`
> (`module/zfs/dbuf.c:1425-1444`): `max_bonuslen` is 320 bytes
> for a one-slot dnode; `kmem_alloc(max_bonuslen)` allocates that
> fixed-size destination; and `memcpy(..., bonuslen)` uses an on-disk
> 16-bit length that can
> be much larger. Original static report:
> [zfs-dnode-bonus](../research/zfs-dnode-bonus/README.md). Later
> image-crafting
> proved an attacker controls the copy's content and length (up to ~64
> KiB) from a
> 320-byte allocation in the `kmalloc-512` class, firing during pool
> import from
> the same userns/container-equivalent position as OZ-1. Corrected
> crafter mechanics and sanitizer evidence:
> [controlled-write
> report](../research/zfs-escape-chain/77-corruption-escape.md).
> 
> ### Exploit development and demonstrated ceiling
> 
> The weaponization campaign converted this overflow into a no-ROP
> `pipe_buffer`
> primitive: grow a dataset child ZAP to fatzap to remove a competing
> 512-byte scratch allocation; spray and hole-punch pipe rings so the
> bonus dbuf is allocated adjacent to a live `pipe_buffer` array;
> overwrite the adjacent array's
> `page`, `offset`, `len`, `ops`, and flags; use ordinary pipe
> reads/writes as kernel arbitrary read/write; replace `modprobe_path`;
> and trigger module autoload
> through an unregistered socket protocol family. The result and its
> hardening caveats are stated once in [the
> chain](#the-chain-oz-1--oz-4). Full exploit-development evidence:
> [77b report](../research/zfs-escape-chain/77b-exploit-poc.md).
> 
> ### KASAN interpretation
> 
> KASAN materially changes how this bug must be interpreted. On this
> kernel, `__asan_memcpy()` checks the entire range and skips the
> actual copy when the range crosses poisoned shadow. An earlier KASAN
> "Write of size 1064" therefore
> proved an attempted OOB copy but did **not** prove that controlled
> bytes were
> written; the subsequent report corrects that earlier conclusion. The
> completed
> exploit did not disable KASAN — the attempted `kasan=off` boot
> parameter did not
> reliably disable KASAN on this config and was ignored. Instead, the
> heap groom
> placed the victim pipe array in a same-slab span that KASAN considered
> addressable, so the real `memcpy` completed and the root-shell proof
> followed.
> On an ordinary non-KASAN production kernel the sanitizer cannot abort
> the copy,
> but KASLR and freelist hardening remain independent exploitation
> constraints.
> 
> The proposed ZIL Z1 leak would provide the missing KASLR bootstrap
> from the same
> import surface, but it is **not verified**: the truncation forces a
> minimum copy
> of ~4 GiB and cannot be tuned to a small adjacent heap read; KASAN
> rejects that
> cross-redzone copy before any leaked bytes reach the replay buffer.
> Source inspection confirmed the same truncation in IncusOS's OpenZFS
> 2.4.3, but runtime
> verification on a non-KASAN, KASLR-enabled IncusOS appliance was
> blocked by test-appliance reinstall/TPM boot problems. This remains
> an escalation hypothesis, not evidence for a completed production
> KASLR bypass.
> 
> ### Recommended fix
> 
> Perform release-build validation of the entire dnode physical layout
> before publishing it: validate `dn_nblkptr`, `dn_extra_slots`, and
> `dn_bonuslen` together; reject any layout whose block-pointer and
> bonus regions exceed the dnode slot capacity; and use the validated
> allocation size as the copy bound.
> 
> ## OZ-5: gang-block depth and leader-buffer bounds
> 
> ### OZ-5a: unbounded recursion
> 
> `zio_gang_tree_issue()` recursively walks the assembled gang tree at
> `module/zfs/zio.c:3011-3047` with no depth, node-count, or cycle
> limit. A crafted chain of 2,048 valid gang headers reached the stack
> guard page; the panic RIP and repeated frames were in
> `zio_gang_tree_issue`.
> 
> ### OZ-5b: leaf overrun
> 
> `zio_read_gang()` derives a child ABD at the current leader offset but
> issues the
> read using the constituent block's physical size. The ABD bookkeeping
> is clamped
> to the leader's remaining size, but the raw linear buffer pointer is
> not. The
> only check that constituent sizes sum to the leader size is an
> `ASSERT`. Inflating one leaf from 128 KiB to 256 KiB caused repeated
> 4 KiB KASAN writes up
> to 128 KiB past a 128 KiB `zio_buf_comb_131072` allocation; integrity
> verification occurred only after the bytes had been written.
> ([dynamic gang-block
> report](../research/zfs-gang-block/103-zfs-gang-dynamic.md))
> 
> ### Recommended fix
> 
> - Impose runtime maximum depth and total-node limits while assembling
> and issuing gang trees; detect cycles or repeated header identities.
> - Before every leaf read, require
>   `offset <= leader_size && psize <= leader_size - offset`.
> - Reject, rather than `ASSERT`, inconsistent total physical sizes.
> 
> ## OZ-6: log-spacemap replay vdev and metaslab indices
> 
> At writable import, `spa_ld_log_sm_cb()` in
> `module/zfs/spa_log_spacemap.c:1262-1316` trusts both the decoded
> vdev ID (dereferencing `vdev_lookup_top()` without checking for
> `NULL`) and `offset >> vd->vdev_ms_shift` as an index into
> `vd->vdev_ms[]` (without a runtime
> bound against `vd->vdev_ms_count`). The subsequent code dereferences
> the selected
> `metaslab_t *` and mutates its range trees. Space-map range checks are
> `ASSERT`-only, and log space maps are opened with `sm_size =
> UINT64_MAX`, which
> would make the nominal upper bound ineffective even in a debug build.
> Confirmed from source
> ([report](../research/zfs-log-spacemap/README.md)); no dynamic crash
> or corruption log is claimed.
> 
> ### Recommended fix
> 
> - Reject unknown/non-concrete vdev IDs before dereference.
> - Check the derived metaslab index against `vdev_ms_count`.
> - Give log space maps their real addressable range and convert
> on-disk range assumptions from `ASSERT` to runtime validation.
> 
> ## OZ-7: fatzap chunk-chain validation
> 
> Fatzap leaf traversal follows on-disk `la_next` chunk indices without
> a release-build range check and without cycle detection
> (`module/zfs/zap_leaf.c:338-366`). Two crafted variants were
> exercised: a cyclic
> chain repeatedly copied past the destination name buffer and remained
> in an in-kernel loop; and out-of-range indices were honored as
> further chunks outside
> the leaf buffer. KASAN reported slab out-of-bounds accesses in
> `zap_leaf_array_read()`; the cycle produced 1,810 multi-shot reports
> before harvest and remained runnable.
> ([dynamic
> report](../research/zfs-spl-zap-acl/104-dynamic-confirmation.md))
> 
> ### Recommended fix
> 
> - Reject every chunk index outside the leaf's chunk count.
> - Bound traversal by the number of chunks and reject cycles.
> - Validate chunk type and the aggregate copied length before copying.
> 
> ## OZ-8: SPL cache-destroy hang
> 
> In `spl_kmem_cache_destroy()`: the recorded grow-work task ID remains
> `TASKQID_INVALID`, so cancellation does not identify the in-flight
> work; and destroy waits on a stack-local waitqueue that the grow
> completion path never wakes. The race was triggered dynamically —
> destroy entered with grow work in
> flight; the grow reference later returned to zero, but the destroy
> thread remained in uninterruptible `D` state for the duration of the
> run; an unraced
> control returned immediately. The release-build
> destroy-with-live-objects UAF
> hypothesis was not pursued and is not claimed.
> ([dynamic SPL
> report](../research/zfs-spl-zap-acl/104-dynamic-confirmation.md))
> 
> ### Recommended fix
> 
> - Store and cancel the actual grow-work task ID.
> - Wait on the cache's shared waitqueue, or explicitly wake the
> waitqueue used by
>   destroy when grow references change.
> - Make outstanding-object/refcount checks runtime-enforced during
> teardown.
> 
> ## Suggested remediation order
> 
> 1. **OZ-1 and OZ-2:** restore the Linux privilege boundary and caller
> access checks. These reduce immediate cross-tenant impact and return
> parser findings
>    to an administrator/import threat model.
> 2. **OZ-3, OZ-4, OZ-5, and OZ-7:** add centralized runtime validation
> before replaying or traversing attacker-controlled metadata.
> 3. **OZ-6:** reject invalid log-spacemap vdev/metaslab coordinates
> during import.
> 4. **OZ-8:** correct teardown work cancellation and waitqueue
> ownership.
> 
> Where practical, malformed-pool tests should run against release-mode
> modules;
> many of the affected invariants currently exist only as debug
> `ASSERT`s.
> 
> ## Evidence index
> 
> - ZIL replay: [confirmed
> report](../confirmed/zfs-zil-replay/README.md) and [validation
> logs](../confirmed/zfs-zil-replay/logs/)
> - Dnode bonus overflow: [source
> report](../research/zfs-dnode-bonus/README.md),
>   [dynamic controlled-write
> follow-up](../research/zfs-escape-chain/77-corruption-escape.md),
>   and [root-shell exploit-development
> report](../research/zfs-escape-chain/77b-exploit-poc.md)
> - Gang blocks: [source report](../research/zfs-gang-block/README.md)
> and [dynamic
> follow-up](../research/zfs-gang-block/103-zfs-gang-dynamic.md)
> - Log spacemap: [source
> report](../research/zfs-log-spacemap/README.md)
> - fatzap and SPL: [source/refutation
> report](../research/zfs-spl-zap-acl/README.md)
>   and [dynamic
> follow-up](../research/zfs-spl-zap-acl/104-dynamic-confirmation.md)
> - Linux authorization: [userns gate](../research/zfs-gate/README.md),
>   [pool zone-gate
> analysis](../research/zfs-zonegate-bypass/README.md), and [IncusOS
> end-to-end result](../research/incusos-containers/35b-incusos-e2e.md)
> - Vdev caller access: [pool-create/DAC
> result](../research/zvol-dac-bypass/README.md)
>   and [mirror amplification](../research/zfs-vdevattach/README.md)
> 
> ## Coordination checklist
> 
> - [ ] Re-test against the upstream-selected supported branch/revision.
> - [ ] Split CVE assignments by independent root cause as requested by
> upstream.
> - [ ] Provide private reproducers and full serial logs through the
> coordinated
>       disclosure channel.
> - [ ] Agree on whether OZ-1/OZ-2 are Linux-port defects or documented
> behavior
>       requiring a deployment-level change.
> - [ ] Verify fixes with malformed-input regression tests and
> release-mode modules.


Content of type "application/pgp-signature" skipped
