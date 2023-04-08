export const slugify = str =>
    str
        .toLowerCase()
        .trim()
        .normalize('NFD')
        .replace(/([^n\u0300-\u036f]|n(?!\u0303(?![\u0300-\u036f])))[\u0300-\u036f]+/gi, "$1")
        .replace(/[^\w\s-]/g, '')
        .replace(/[\s_-]+/g, '-')
        .replace(/^-+|-+$/g, '')
        .normalize();



export const slugToString = (str) => {
    console.log('slugToString ', str)
    str
        ?.toLowerCase()
        .trim()
        .normalize('NFD')
        .replace(/-/g, ' ')
        .replace(/(^\w{1})|(\s+\w{1})/g, letra => letra.toUpperCase())
        .normalize();
}
