<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/22739c01-18eb-463f-ba08-f4dddb9e3ea4" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/user-attachments/assets/b82d0304-3c5d-42c9-bd21-a2311b0415f5" draggable="false" ondragstart="return false; "alt="norflow" title="norflow" />
  </picture>
</p>

[Apple Shortcuts][apple-shortcuts] is indeed a powerful tool that enables users to simplify their daily tasks and complete them with ease. With just a tap or a voice command, you can perform a wide range of actions, such as sending messages, setting reminders, or playing your favourite music. Additionally, the Shortcuts app allows you to create personalised shortcuts with multiple steps, which can save you significant time and effort.

However, the app creates an empty folder on your iCloud Drive every time it's opened. While it's possible to store files in this folder, it's often left empty. Although deleting the folder manually is harmless, it can be time-consuming and bothersome. This is where a simple utility comes in handy. This utility helps by automatically removing this redundant folder if it's empty, ensuring your iCloud Drive remains clutter-free.

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/c2746d4b-110f-4b47-9082-7371f56f18e3" draggable="false" ondragstart="return false;" alt="norflow" title="norflow" />
    <img src="https://github.com/user-attachments/assets/fad8c3be-2efc-4ea9-865c-be9366c984be" draggable="false" ondragstart="return false; "alt="Apple Shortcuts" title="Apple Shortcuts" width="750px" />
  </picture>
</p>

## Getting Started

Here are the two methods you can choose from:

**Automatic Download via `curl`**: Simply execute the following command in your terminal to quickly download and seamlessly install the utility:

```shell
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/norflow/HEAD/bootstrap.zsh)"
```

**Manual Cloning**: For those who prefer a hands-on approach, you can manually clone the repository to your desired location:

```shell
git clone https://github.com/nicolodiamante/norflow.git ~/norflow
```

<br>

### Post-Download Steps

**Directory Navigation & Script Execution**: Navigate to the repository's `utils` directory and execute the installation script:

```shell
source utils/install.zsh
```

**Norflow Configuration**: Running the script will efficiently copy the agent files to `~/Library/LaunchAgents`, ensuring Norflow is seamlessly integrated into your system.
<br><br>

## How It Works

**Agent**: A specialised program designed to perform tasks at set intervals. In the context of this utility, the agent's primary function is to scan your iCloud Drive at regular intervals.

**Scan Frequency**: The agent initiates a scan every 300 seconds to detect the presence of the Shortcuts folder in iCloud Drive.

**Deletion Criteria**: Upon detecting the Shortcuts folder, if it's empty, the folder is deleted. This step ensures that no important data is inadvertently removed.

### Benefits

- **Automated Cleanup**: Keep the iCloud Drive clean by auto-deleting a frequently empty folder.
- **Efficiency**: Removes manual checks, keeping iCloud Drive tidy.

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
    <img src="https://github.com/user-attachments/assets/4b9632bd-b010-4b07-8c7c-a5feeefd6fc8" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <a href="https://nicolodiamante.com" target="_blank">
    <img src="https://github.com/user-attachments/assets/5454fbeb-18c0-426d-8c8e-944977ed01c1" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="17px" />
  </a>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/81a15898-56ae-4a7b-b5a5-49156ccbf32b" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/user-attachments/assets/8a89cc7e-ce05-4d47-8176-2c49c248dd48" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->

[apple-shortcuts]: https://support.apple.com/en-gb/guide/shortcuts/welcome/ios
[apple-guide]: https://support.apple.com/en-gb/guide/shortcuts/apdf22b0444c/6.0/ios/16.0
[issues]: https://github.com/nicolodiamante/norflow/issues
