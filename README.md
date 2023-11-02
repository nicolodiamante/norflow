<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/d6bb011e-000e-4469-85ae-dd7a53c578e4" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/6c2493b9-ccf0-45fe-b0b4-a645b488c0ca" draggable="false" ondragstart="return false; "alt="norflow" title="norflow" />
  </picture>
</p>

[Apple shortcuts][apple-shortcuts] is indeed a powerful tool that enables users to simplify their daily tasks and complete them with ease. With just a tap or a voice command, you can perform a wide range of actions, such as sending messages, setting reminders, or playing your favourite music. Additionally, the Shortcuts app allows you to create personalised shortcuts with multiple steps, which can save you significant time and effort.

However, the app creates an empty folder on your iCloud Drive every time it's opened. While it's possible to store files in this folder, it's often left empty and can become a nuisance. Although deleting the folder manually is harmless, it can be time-consuming and bothersome. This is where a simple utility comes in handy. This utility helps by automatically removing this redundant folder if it's empty, ensuring your iCloud Drive remains clutter-free.

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/342c2007-ad34-495d-ade4-aaa73948d41b" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/651404d0-9a3b-4c69-8430-fe9cc03ef370" draggable="false" ondragstart="return false; "alt="Apple Shortcuts" title="Apple Shortcuts" width="750px" />
  </picture>
</p>

## Getting Started

Here are the two methods you can choose from:

**Automatic Download via `curl`**: Simply execute the following command in your terminal to quickly download and seamlessly install the utility:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/norflow/HEAD/bootstrap.sh)"
```

**Manual Cloning**: For those who prefer a hands-on approach, you can manually clone the repository to your desired location:

```shell
git clone https://github.com/nicolodiamante/norflow.git ~/norflow
```

<br>

### Post-Download Steps

**Directory Navigation & Script Execution**: Navigate to the repository's `utils` directory and execute the installation script:

```shell
source install.sh
```

**Norflow Configuration**: Running the script will efficiently copy the agent files to `~/Library/LaunchAgents`, ensuring Norflow is seamlessly integrated into your system.
<br><br>

### How It Works

**Agent**: A specialised program designed to perform tasks at set intervals. In the context of this utility, the agent's primary function is to scan your iCloud Drive at regular intervals.

**Scan Frequency**: The agent initiates a scan every 300 seconds to detect the presence of the Shortcuts folder in iCloud Drive.

**Deletion Criteria**: Upon detecting the Shortcuts folder, if it's empty, the folder is deleted. This step ensures that no important data is inadvertently removed.

#### Benefits

- **Automated Cleanup**: Keep the iCloud Drive clean by auto-deleting a frequently empty folder.
- **Efficiency**: Eliminates the need for manual checks or deletions, ensuring a consistently organised iCloud Drive.

In summary, this combination of agent and script delivers a seamless solution for maintaining an orderly iCloud Drive. By reducing unnecessary clutter, it paves the way for enhanced productivity and an improved workflow.
<br><br>

## Notes

### Resources

- [Shortcuts User Guide][apple-guide]

### Contribution

Any suggestions or feedback you may have for improvement are welcome. If you encounter any issues or bugs, please report them to the [issues page][issues].
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/f3dac045-2175-46d6-91bd-1ece65f7269e" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/0047c3eb-f531-45f5-b705-fce0ed75e1de" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante" title="Nicol&#242; Diamante" width="17px" />
  </picture>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/norflow/assets/48920263/26fa2f3f-9bcc-4c1e-99dc-5c5ca8e3abe7" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/nicolodiamante/norflow/assets/48920263/55273eec-42e5-42d0-8efb-8c4f42025f3b" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->

[apple-shortcuts]: https://support.apple.com/en-gb/guide/shortcuts/welcome/ios
[apple-guide]: https://support.apple.com/en-gb/guide/shortcuts/apdf22b0444c/6.0/ios/16.0
[issues]: https://github.com/nicolodiamante/norflow/issues
