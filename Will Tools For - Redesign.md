# Will Tools For - Redesign

## Purpose

Capture the current scope and partial design notes for the new repository **Tools for Everyday Task Scripts**.

## Confirmed scope

- The definitive task is to rename and move the MaxScript code base repository so it sits with the other MaxScript repositories/scripts in the standard MaxScript location.
- Keep the **AI Agents** material separate from the MaxScript code and library. The AI agent instructions/workflow and the MaxScript library are distinct parts and should not be treated as one combined repository.
- The workflow and interface notes below are only part of the design. They are not a complete or final design specification; more details will be added as the design discussion continues.

## Core direction

Combine useful parts of both tools rather than replacing one workflow wholesale:

- Reuse the Tools Free workflow for importing scripts and creating scripts from content.
- Preserve the Script Manager's script browser and its ability to load scripts into either a separate rollout or a shared rollout.
- Improve the handoff between importing, creating, organizing, and loading scripts.

## Requirements captured so far

### Import and startup workflow

- Support importing script files at startup.
- Support importing scripts into 3ds Max when requested.
- Allow scripts to be created from supplied content.
- Keep the import flow straightforward and make its current state clear.

### Dialog state and events

- Dialogs should be aware of their state and save it so useful state can be restored.
- Controls should be able to fire events temporarily, with other controls able to observe or catch those events while the dialog is running.
- Events should be reusable by multiple default actions.
- The precise event representation, lifecycle, and persistence rules still need to be designed.

### Script Manager capabilities to retain

- Keep the existing file browser.
- Keep loading scripts into a separate rollout.
- Keep loading scripts into a shared rollout with creators.

### Rollout and control layout

- Group related controls in group boxes.
- Use the available dialog area efficiently, minimizing unnecessary gaps and fitting controls to the available width.
- Arrange controls into rows according to their function so the interface is easy to scan. Row lengths may differ when that improves grouping and orientation (for example, three buttons on one row, five Material ID buttons on another, and four buttons on the next).

## Design and implementation sequence

1. Inspect the current Tools Free and Script Manager code and document their existing behavior.
2. Identify reusable import, script creation, file browsing, and rollout-loading components.
3. Define the dialog-state model and the event model, including how temporary events are observed and how multiple default actions are dispatched.
4. Define the rollout layout rules for grouping and arranging controls.
5. Design the combined workflow and preserve the Script Manager capabilities listed above.
6. Implement and verify the redesigned workflow in the new repository.

## Open design decisions

- Exact event object/data structure and event names.
- How event subscriptions are registered, removed, and scoped to a dialog or control.
- Which dialog state is persisted, and where and when it is saved.
- The precise startup-import behavior and user-configurable options.
- How shared rollouts integrate with script creators and grouped controls.

## Status

Partial design notes captured from discussion. The confirmed immediate scope is the repository rename/move and the separation of AI Agents materials from the MaxScript library. The broader workflow and implementation details remain open until the current tools are inspected and the design discussion continues.
