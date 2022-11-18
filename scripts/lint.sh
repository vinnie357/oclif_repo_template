function lint {
#!/bin/bash
npx eslint . --ext .ts --config .eslintrc --fix
}
